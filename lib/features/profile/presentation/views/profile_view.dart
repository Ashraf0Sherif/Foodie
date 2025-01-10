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
                        'Total Orders',
                        style: FontStyles.font12BlackRegular,
                      ),
                    ),
                  ),
                )),
                horizontalSpace(10),
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Row(
                      children: [
                        Text('Manage Profile',
                            style: FontStyles.font14PassiveRegular),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.chevron_right,
                            size: 20.sp,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                    height: 0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Row(
                      children: [
                        Text('Manage Profile',
                            style: FontStyles.font14PassiveRegular),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.chevron_right,
                            size: 20.sp,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                    height: 0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Row(
                      children: [
                        Text('Manage Profile',
                            style: FontStyles.font14PassiveRegular),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.chevron_right,
                            size: 20.sp,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
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
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Row(
                      children: [
                        Text('Manage Profile',
                            style: FontStyles.font14PassiveRegular),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.chevron_right,
                            size: 20.sp,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                    height: 0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Row(
                      children: [
                        Text('Manage Profile',
                            style: FontStyles.font14PassiveRegular),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.chevron_right,
                            size: 20.sp,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                    height: 0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Row(
                      children: [
                        Text('Manage Profile',
                            style: FontStyles.font14PassiveRegular),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.chevron_right,
                            size: 20.sp,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.grey,
                      size: 20.sp,
                    ),
                    horizontalSpace(10),
                    Text('Manage Profile',
                        style: FontStyles.font14PassiveRegular),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.chevron_right,
                        size: 20.sp,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(20),
        ),
      ],
    );
  }

  Row buildRow(
      {required IconData icon,
      required String title,
      required void Function() onPressed}) {
    return Row(
      children: [
        Icon(icon),
        horizontalSpace(10),
        Text(title, style: FontStyles.font16SecondaryColorBold),
        const Spacer(),
        IconButton(onPressed: onPressed, icon: const Icon(Icons.chevron_right))
      ],
    );
  }
}
