import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/features/cart/presentation/widgets/not_logged_in.dart';
import 'package:foodie/features/profile/logic/profile_cubit/profile_cubit.dart';
import 'package:foodie/features/profile/presentation/widgets/profile_skeleton_view.dart';

import '../../../../core/theming/styles.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        if (state is ProfileLoading || state is ProfileSuccess) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                surfaceTintColor: Colors.transparent,
                elevation: 0,
                centerTitle: true,
                title: Text(
                  'Profile',
                  style: FontStyles.font24SecondaryColorBold,
                ),
              ),
              SliverToBoxAdapter(
                child: state is ProfileLoading
                    ? const ProfileSkeletonView(
                      skeleton: true,
                    )
                    : ProfileSkeletonView(
                      foodieUser: context.read<ProfileCubit>().foodieUser,
                    ),
              )
            ],
          );
        }
        return state.maybeWhen(
          error: (error) => ProfileErrorOrNotLoggedIn(
            error: error,
            view: 'Profile',
            errorDescription: 'Something went wrong',
          ),
          orElse: () {
            return const ProfileErrorOrNotLoggedIn(
              error: 'You are not logged in',
              view: 'Profile',
              errorDescription: 'Please log in to view your profile',
            );
          },
        );
      },
    );
  }
}
