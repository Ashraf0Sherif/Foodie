import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/features/profile/logic/profile_cubit/profile_cubit.dart';
import 'package:foodie/features/profile/presentation/widgets/manage_profile_form.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class SuccessManageProfileView extends StatefulWidget {
  const SuccessManageProfileView({super.key});

  @override
  State<SuccessManageProfileView> createState() =>
      _SuccessManageProfileViewState();
}

class _SuccessManageProfileViewState extends State<SuccessManageProfileView> {
  @override
  Widget build(BuildContext context) {
    final avatarUrl = context.read<ProfileCubit>().foodieUser!.avatarUrl;
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Manage Profile',
            style: FontStyles.font24SecondaryColorBold,
          ),
        ),
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
                      child: CircleAvatar(
                        radius: 70.r,
                        backgroundImage: CachedNetworkImageProvider(avatarUrl ??
                            'https://gratisography.com/wp-content/uploads/2024/11/gratisography-augmented-reality-1170x780.jpg'),
                      ),
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
