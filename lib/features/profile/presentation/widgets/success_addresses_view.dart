import 'package:flutter/material.dart';
import '../../../login/data/models/user_model/address.dart';
import '../../logic/profile_cubit/profile_cubit.dart';
import 'address_card.dart';

class SuccessAddressesView extends StatelessWidget {
  const SuccessAddressesView(
      {super.key, required this.addresses, required this.profileCubit});

  final List<Address> addresses;
  final ProfileCubit profileCubit;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: addresses.length,
      itemBuilder: (context, index) {
        return AddressCard(
          address: addresses[index],
          profileCubit: profileCubit,
        );
      },
    );
  }
}
