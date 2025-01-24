import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/helpers/assets.dart';
import 'package:foodie/core/theming/ui_constants.dart';
import 'package:foodie/features/login/data/models/user_model/address.dart';
import 'package:foodie/features/profile/logic/profile_cubit/profile_cubit.dart';
import 'package:foodie/features/profile/presentation/widgets/addresses_sliver_list.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/no_items_found.dart';
import '../../../../core/widgets/sliver_view_app_bar.dart';
import '../../../../generated/l10n.dart';
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
          SliverViewAppBar(
            title: S.of(context).addresses,
          ),
          BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () =>
                    const SliverToBoxAdapter(child: SizedBox.shrink()),
                loading: () {
                  return AddressesSliverList(
                    skeleton: true,
                    profileCubit: profileCubit,
                  );
                },
                success: () {
                  List<Address> addresses =
                      context.read<ProfileCubit>().foodieUser!.addresses ?? [];
                  if (addresses.isEmpty) {
                    return SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: kDefaultHorizontalPadding),
                        child: NoItemsFound(
                          svgImage: AssetsData.kNoAddressesSVG,
                          title: S.of(context).emptyAddressListTitle,
                          description:
                              S.of(context).emptyAddressListDescription,
                        ),
                      ),
                    );
                  } else {
                    return AddressesSliverList(
                        addresses: addresses, profileCubit: profileCubit);
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


