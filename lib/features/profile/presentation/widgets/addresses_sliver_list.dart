import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../login/data/models/user_model/address.dart';
import '../../logic/profile_cubit/profile_cubit.dart';
import 'address_card.dart';

class AddressesSliverList extends StatelessWidget {
  const AddressesSliverList({
    super.key,
    this.addresses,
    required this.profileCubit,
    this.skeleton = false,
  });

  final List<Address>? addresses;
  final ProfileCubit profileCubit;
  final bool skeleton;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: skeleton ? 3 : addresses?.length ?? 0,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: Skeletonizer(
            enabled: skeleton,
            child: AddressCard(
              address: addresses?[index],
              profileCubit: profileCubit,
            ),
          ),
        );
      },
    );
  }
}
