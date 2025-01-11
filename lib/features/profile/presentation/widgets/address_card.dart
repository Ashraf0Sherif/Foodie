import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:foodie/features/profile/logic/profile_cubit/profile_cubit.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../login/data/models/user_model/address.dart';
import '../views/address_bottom_sheet.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({
    super.key,
    this.edit = true,
    required this.address,
    this.profileCubit,
  });

  final bool edit;
  final Address address;
  final ProfileCubit? profileCubit;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      enabled: edit,
      endActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              context.read<ProfileCubit>().removeAddress(address: address);
            },
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
            padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 8.h),
            borderRadius: BorderRadius.circular(16.r),
          ),
        ],
      ),
      child: Card(
        elevation: 5,
        shadowColor: Colors.white.withOpacity(0.75),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 8.h),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Icons.location_on,
              size: 30.sp,
              color: ColorsStyles.kPrimaryColor,
            ),
            title: Text(
              address.title,
              style: FontStyles.font16SecondaryColorBold,
            ),
            subtitle: Text(
              address.street,
              style: FontStyles.font12PassiveRegular,
            ),
            trailing: edit
                ? IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) {
                          return BlocProvider<ProfileCubit>.value(
                            value: profileCubit!,
                            child: AddressBottomSheet(
                              edit: true,
                              address: address,
                            ),
                          );
                        },
                      );
                    },
                    icon: Icon(
                      Icons.mode_edit_sharp,
                      size: 22.sp,
                      color: ColorsStyles.kPrimaryColor,
                    ),
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
