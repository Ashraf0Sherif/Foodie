import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/assets.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/core/theming/colors.dart';
import 'package:foodie/features/login/data/models/user_model/foodie_user.dart';
import 'package:foodie/features/profile/logic/profile_cubit/profile_cubit.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/theming/ui_constants.dart';
class ProfileSkeletonView extends StatelessWidget {
  const ProfileSkeletonView(
      {super.key, this.foodieUser, this.skeleton = false});

  final FoodieUser? foodieUser;
  final bool skeleton;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: skeleton,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Skeletonizer(
                  enabled: skeleton,
                  child: CircleAvatar(
                    radius: 35.r,
                    backgroundColor:
                    Color(ColorsStyles.kSecondaryColor.value)
                        .withOpacity(0.3),
                    backgroundImage: foodieUser?.avatarUrl == null
                        ? const AssetImage(AssetsData.kNoUserImageSVG)
                        : CachedNetworkImageProvider(foodieUser!.avatarUrl!),
                  ),
                ),
                horizontalSpace(10),
                Skeletonizer(
                  enabled: skeleton,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodieUser?.username ?? 'Loading...',
                        style: FontStyles.font16SecondaryColorBold,
                      ),
                      Text(
                        foodieUser?.email ?? 'Loading...',
                        style: FontStyles.font14PassiveRegular,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            verticalSpace(20),
            Row(
              children: [
                Expanded(
                  child: Skeletonizer(
                    enabled: skeleton,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Center(
                          child: Text(
                            foodieUser?.totalOrders.toString() ?? '0',
                            style: FontStyles.font12SecondaryColorBold,
                          ),
                        ),
                        subtitle: Center(
                          child: Text(
                            'Total Orders',
                            style: FontStyles.font12BlackRegular,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                horizontalSpace(10),
                Expanded(
                  child: Skeletonizer(
                    enabled: skeleton,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Center(
                          child: Text(
                            foodieUser?.totalSpent.toString() ?? '0',
                            style: FontStyles.font12SecondaryColorBold,
                          ),
                        ),
                        subtitle: Center(
                          child: Text(
                            'Total Spent',
                            style: FontStyles.font12BlackRegular,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(20),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.25),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  buildPaddingRow(
                    title: 'Manage Profile',
                    onPressed: () => context.pushNamed(
                      Routes.kManageProfileView,
                      arguments: context.read<ProfileCubit>(),
                    ),
                  ),
                  buildDivider(),
                  buildPaddingRow(
                    title: 'Addresses',
                    onPressed: () => context.pushNamed(
                      Routes.kAddressView,
                      arguments: context.read<ProfileCubit>(),
                    ),
                  ),
                  buildDivider(),
                  buildPaddingRow(
                    title: 'Receipts',
                    onPressed: () => context.pushNamed(
                      Routes.kReceiptsView,
                      arguments: foodieUser,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(20),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.25),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: buildPaddingRow(
                title: 'Logout',
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  context.pushNamedAndRemoveUntil(
                    Routes.kLoginView,
                    predicate: (Route<dynamic> route) => false,
                  );
                },
                icon: Icons.logout,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Divider buildDivider() {
    return const Divider(
      color: Colors.grey,
      thickness: 1,
      height: 0,
    );
  }

  Padding buildPaddingRow({
    required String title,
    required void Function() onPressed,
    IconData icon = Icons.chevron_right,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Row(
        children: [
          Text(title, style: FontStyles.font14PassiveRegular),
          const Spacer(),
          IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              size: 20.sp,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
