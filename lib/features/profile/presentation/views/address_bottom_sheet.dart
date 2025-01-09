import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/features/home/presentation/widgets/order_customization/customize_order_bottom_sheet_top_bar.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../widgets/address_bottom_sheet_form.dart';

class AddressBottomSheet extends StatelessWidget {
  const AddressBottomSheet({
    super.key,
    required this.edit,
  });

  final bool edit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          children: [
            BottomSheetTopBar(title: edit ? 'Edit Address' : 'Add Address'),
            const Divider(
              color: Color(0xffECECEC),
            ),
            Expanded(
              child: AddressBottomSheetForm(edit: edit),
            )
          ],
        ),
      ),
    );
  }
}


