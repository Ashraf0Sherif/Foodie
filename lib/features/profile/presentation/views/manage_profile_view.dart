import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/theming/ui_constants.dart';
import 'package:foodie/features/profile/logic/profile_cubit/profile_cubit.dart';
import 'package:foodie/features/profile/presentation/widgets/success_manage_profile_view.dart';

import '../../../../core/theming/colors.dart';

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
          child: BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const SizedBox(),
                loading: () {
                  return const Center(child: CircularProgressIndicator());
                },
                success: () {
                  return const SuccessManageProfileView();
                },
                error: (error) => Center(
                  child: Text(error),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
