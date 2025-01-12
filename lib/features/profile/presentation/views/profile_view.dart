import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/features/cart/presentation/widgets/not_logged_in.dart';
import 'package:foodie/features/profile/logic/profile_cubit/profile_cubit.dart';
import 'package:foodie/features/profile/presentation/widgets/success_profile_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    // if (context.read<ProfileCubit>().foodieUser == null) {
    //   context.read<ProfileCubit>().getFoodieUser();
    // }
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return const Center(child: CircularProgressIndicator());
          },
          success: () {
            return const SuccessProfileView();
          },
          error: (error) => ProfileErrorOrNotLoggedIn(
            error: error,
            view: 'Profile',
            errorDescription: 'Something went wrong',
          ),
          orElse: () {
            return Container();
          },
        );
      },
    );
  }
}
