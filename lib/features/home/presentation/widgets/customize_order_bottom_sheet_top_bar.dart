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
        const Spacer(
          flex: 2,
        ),
        Text(
          "Customize Order",
          style: FontStyles.font18BlackSemiBold,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            size: 25,
          ),
        )
      ],
    );
  }
}
