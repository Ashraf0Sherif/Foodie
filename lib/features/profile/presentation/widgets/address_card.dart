import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../views/address_bottom_sheet.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({
    super.key,
    this.edit = true,
  });

  final bool edit;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {},
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
            title: Text('Home', style: FontStyles.font16SecondaryColorBold),
            subtitle: Text(
              'details of address',
              style: FontStyles.font12PassiveRegular,
            ),
            trailing: edit
                ? IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) {
                          return const AddressBottomSheet(
                            edit: true,
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
