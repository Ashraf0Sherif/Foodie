import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';
import '../../../login/data/models/user_model/address.dart';
import '../../logic/profile_cubit/profile_cubit.dart';
import '../views/address_bottom_sheet.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({
    super.key,
    this.edit = true,
    required this.address,
    this.profileCubit,
    this.selected = false,
    this.skeleton = false,
  });

  final bool edit;
  final Address? address; // Make nullable for skeleton mode
  final ProfileCubit? profileCubit;
  final bool selected;
  final bool skeleton;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: skeleton,
      child: Slidable(
        enabled: edit && !skeleton,
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            if (!skeleton) // Disable delete button in skeleton mode
              SlidableAction(
                onPressed: (context) {
                  context.read<ProfileCubit>().removeAddress(address: address!);
                },
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: S.of(context).delete,
                padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 8.h),
                borderRadius: BorderRadius.circular(16.r),
              ),
          ],
        ),
        child: Card(
          elevation: 5,
          shadowColor: Colors.white.withOpacity(0.75),
          color: selected ? Colors.blue.withOpacity(0.3) : Colors.white,
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
                color: skeleton
                    ? Colors.grey.shade300
                    : ColorsStyles.kPrimaryColor,
              ),
              title: Text(
                address?.title ?? S.of(context).loading,
                style: skeleton
                    ? FontStyles.font16PassiveRegular
                    : FontStyles.font16SecondaryColorBold,
              ),
              subtitle: Text(
                address?.street ?? S.of(context).loading,
                style: skeleton
                    ? FontStyles.font12PassiveRegular
                    : FontStyles.font12PassiveRegular,
              ),
              trailing: edit && !skeleton
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
                          address: address!,
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
      ),
    );
  }
}
