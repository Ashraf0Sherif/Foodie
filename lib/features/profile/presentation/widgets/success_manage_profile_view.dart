import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/widgets/sliver_view_app_bar.dart';
import 'package:foodie/features/profile/logic/profile_cubit/profile_cubit.dart';
import 'package:foodie/features/profile/presentation/widgets/manage_profile_form.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../generated/l10n.dart';

class SuccessManageProfileView extends StatefulWidget {
  const SuccessManageProfileView({super.key});

  @override
  State<SuccessManageProfileView> createState() =>
      _SuccessManageProfileViewState();
}

class _SuccessManageProfileViewState extends State<SuccessManageProfileView> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverViewAppBar(title: S.of(context).manageProfile),
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                clipBehavior: Clip.none,
                // Allows the icon to overflow
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: ColorsStyles.kPrimaryColor),
                      borderRadius: BorderRadius.circular(70.r),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Builder(builder: (context) {
                        final state = context.watch<ProfileCubit>().state;
                        final avatarUrl =
                            context.read<ProfileCubit>().foodieUser!.avatarUrl;
                        return Skeletonizer(
                          enabled: state is ProfileLoading,
                          child: CircleAvatar(
                            radius: 70.r,
                            backgroundColor:
                                Color(ColorsStyles.kSecondaryColor.value)
                                    .withOpacity(0.3),
                            backgroundImage: avatarUrl == null
                                ? const AssetImage(AssetsData.kNoUserImageSVG)
                                : CachedNetworkImageProvider(avatarUrl),
                          ),
                        );
                      }),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 0,
                    child: SizedBox(
                      width: 40.w,
                      height: 40.h,
                      child: IconButton(
                        onPressed: () {
                          context.read<ProfileCubit>().changeUserAvatar();
                        },
                        style: IconButton.styleFrom(
                          backgroundColor: ColorsStyles.kPrimaryColor,
                          shape: const CircleBorder(),
                        ),
                        icon: Icon(
                          Icons.edit,
                          size: 20.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: ManageProfileForm(),
        ),
      ],
    );
  }
}
