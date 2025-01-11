import 'package:flutter/material.dart';
import 'package:foodie/core/helpers/assets.dart';
import 'package:foodie/core/theming/ui_constants.dart';
import 'package:foodie/features/login/data/models/user_model/foodie_user.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../widgets/no_addresses_found.dart';
import 'address_bottom_sheet.dart';

class AddressesView extends StatelessWidget {
  const AddressesView({super.key, required this.foodieUser});

  final FoodieUser foodieUser;

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
              return const AddressBottomSheet(
                edit: false,
              );
            },
          );
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
              child: const NoItemsFound(
                svgImage: AssetsData.kNoAddressesSVG,
                title: 'Your address list is empty',
                description:
                    'You look like you haven\'t given any addresses yet.',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
