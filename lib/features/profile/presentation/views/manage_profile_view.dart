import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/core/helpers/show_snack_bar.dart';
import 'package:foodie/core/theming/ui_constants.dart';
import 'package:foodie/features/profile/logic/profile_cubit/profile_cubit.dart';
import 'package:foodie/features/profile/presentation/widgets/success_manage_profile_view.dart';

import '../../../../core/theming/colors.dart';
import '../../../../generated/l10n.dart';

class ManageProfileView extends StatefulWidget {
  const ManageProfileView({super.key});

  @override
  State<ManageProfileView> createState() => _ManageProfileViewState();
}

class _ManageProfileViewState extends State<ManageProfileView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: ColorsStyles.kViewBackground,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
          child: BlocListener<ProfileCubit, ProfileState>(
            listener: (BuildContext context, ProfileState state) {
              state.maybeWhen(
                orElse: () {},
                success: () {
                  context.pop();
                  if (context.read<ProfileCubit>().emailController.text !=
                      context.read<ProfileCubit>().foodieUser!.email!) {
                    showSnackBar(context,
                        message: S.of(context).verifyNewEmail);
                  } else {
                    showSnackBar(context,
                        message: S.of(context).profileUpdatedSuccessfully);
                  }
                },
                error: (error) {
                  context.pop();
                  showSnackBar(context,
                      message: S.of(context).somethingWentWrong);
                },
                loading: () {
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) =>
                          const Center(child: CircularProgressIndicator()));
                },
              );
            },
            child: const SuccessManageProfileView(),
          ),
        ),
      ),
    );
  }
}
