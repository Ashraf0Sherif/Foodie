import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/helpers/assets.dart';
import 'package:foodie/core/theming/ui_constants.dart';
import 'package:foodie/features/login/data/models/user_model/address.dart';
import 'package:foodie/features/profile/logic/profile_cubit/profile_cubit.dart';
<<<<<<< HEAD
import 'package:foodie/features/profile/presentation/widgets/success_addresses_view.dart';
=======
import 'package:foodie/features/profile/presentation/widgets/address_card.dart';
>>>>>>> a7a86b5e97b3d4607376d6acecabd23f5cec782d

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/no_items_found.dart';
import 'address_bottom_sheet.dart';

class AddressesView extends StatelessWidget {
  const AddressesView({super.key, required this.profileCubit});

  final ProfileCubit profileCubit;

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
              return BlocProvider<ProfileCubit>.value(
                value: profileCubit,
                child: const AddressBottomSheet(
                  edit: false,
                ),
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
          BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () =>
                    const SliverToBoxAdapter(child: SizedBox.shrink()),
                success: () {
                  List<Address> addresses =
                      context.read<ProfileCubit>().foodieUser!.addresses ?? [];
                  if (addresses.isEmpty) {
                    return SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: kDefaultHorizontalPadding),
                        child: const NoItemsFound(
                          svgImage: AssetsData.kNoAddressesSVG,
                          title: 'Your address list is empty',
                          description:
                              'You look like you haven\'t given any addresses yet.',
                        ),
                      ),
                    );
                  } else {
<<<<<<< HEAD
                    return SuccessAddressesView(addresses: addresses, profileCubit: profileCubit);
=======
                    return SliverList.builder(
                      itemCount: addresses.length,
                      itemBuilder: (context, index) {
                        return AddressCard(
                          address: addresses[index],
                          profileCubit: profileCubit,
                        );
                      },
                    );
>>>>>>> a7a86b5e97b3d4607376d6acecabd23f5cec782d
                  }
                },
                error: (error) {
                  return SliverToBoxAdapter(
                    child: Center(
                      child: Text(error),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
