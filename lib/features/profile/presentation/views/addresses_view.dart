import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/theming/ui_constants.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../widgets/address_card.dart';
import 'address_bottom_sheet.dart';

class AddressesView extends StatelessWidget {
  const AddressesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsStyles.kViewBackground,
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsStyles.kPrimaryColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return const AddressBottomSheet(edit: false,);
              });
        },
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'Addresses',
              style: FontStyles.font24SecondaryColorBold,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
              child: const Divider(
                thickness: 0.5,
                color: Colors.grey,
              ),
            ),
          ),
          SliverList.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: 14.w,
                      right: 14.w,
                      bottom: index == 9 ? 100.h : 12.h),
                  child: const AddressCard(),
                );
              }),
        ],
      ),
    );
  }
}




