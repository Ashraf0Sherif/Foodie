import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/widgets/sliver_view_app_bar.dart';
import 'package:foodie/features/cart/presentation/widgets/not_logged_in.dart';
import 'package:foodie/features/profile/logic/profile_cubit/profile_cubit.dart';
import 'package:foodie/features/profile/presentation/widgets/profile_skeleton_view.dart';

import '../../../../generated/l10n.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        if (state is ProfileLoading || state is ProfileSuccess) {
          return CustomScrollView(
            slivers: [
              SliverViewAppBar(title: S.of(context).profile),
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
            view: S.of(context).profile,
            errorDescription: S.of(context).somethingWentWrong,
          ),
          orElse: () {
            return ProfileErrorOrNotLoggedIn(
              error: S.of(context).notLoggedInError,
              view: S.of(context).profile,
              errorDescription: S.of(context).notLoggedInDescription,
            );
          },
        );
      },
    );
  }
}
