import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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
            child: Column(
              children: [
                buildRow(
                    icon: Icons.person,
                    title: 'Edit Profile',
                    onPressed: () {}),
                buildRow(
                    icon: Icons.location_on,
                    title: 'Addresses',
                    onPressed: ()=>context.pushNamed(Routes.kAddressView)),
                buildRow(
                    icon: Icons.receipt, title: 'Receipts', onPressed: () {}),
                buildRow(
                    icon: Icons.logout,
                    title: 'Logout',
                    onPressed: () {
                      FirebaseAuth.instance.signOut();
                    }),
              ],
            ),
          ),
        )
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
        Text(title , style: FontStyles.font16SecondaryColorBold),
        const Spacer(),
        IconButton(onPressed: onPressed, icon: const Icon(Icons.chevron_right))
      ],
    );
  }
}
