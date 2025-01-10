import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/core/helpers/spacing.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/theming/ui_constants.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/129702213.jpg'),
                  radius: 24.sp,
                ),
                horizontalSpace(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ashraf Sherif',
                      style: FontStyles.font16SecondaryColorBold,
                    ),
                    Text(
                      'ashraf.sherif.eg@gmail.com',
                      style: FontStyles.font14PassiveRegular,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(20),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Center(
                      child: Text(
                        '10',
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
                )),
                horizontalSpace(10),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Center(
                      child: Text(
                        '10',
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
                )),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(20),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.25),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  buildPaddingRow(
                      title: 'Manage Profile',
                      onPressed: () =>
                          context.pushNamed(Routes.kManageProfileView)),
                  buildDivider(),
                  buildPaddingRow(
                      title: 'Addresses',
                      onPressed: () => context.pushNamed(Routes.kAddressView)),
                  buildDivider(),
                  buildPaddingRow(
                      title: 'Receipts',
                      onPressed: () => context.pushNamed(Routes.kReceiptsView)),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(20),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.25),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: buildPaddingRow(
                  title: 'Logout',
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                  icon: Icons.logout),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(20),
        ),
      ],
    );
  }

  Divider buildDivider() {
    return const Divider(
      color: Colors.grey,
      thickness: 1,
      height: 0,
    );
  }

  Padding buildPaddingRow(
      {required String title,
      required void Function() onPressed,
      IconData icon = Icons.chevron_right}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Row(
        children: [
          Text(title, style: FontStyles.font14PassiveRegular),
          Spacer(),
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
