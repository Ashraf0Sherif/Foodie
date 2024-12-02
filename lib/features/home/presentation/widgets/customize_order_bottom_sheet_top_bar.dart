import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class CustomizeOrderBottomSheetTopBar extends StatelessWidget {
  const CustomizeOrderBottomSheetTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Text(
              "Customize Order",
              style: FontStyles.font18BlackSemiBold,
            ),
          ),
        ),
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon:  const Icon(Icons.close,size: 25,))
      ],
    );
  }
}
