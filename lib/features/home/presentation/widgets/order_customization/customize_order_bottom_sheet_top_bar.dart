import 'package:flutter/material.dart';

import '../../../../../core/theming/styles.dart';

class BottomSheetTopBar extends StatelessWidget {
  const BottomSheetTopBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(
          flex: 2,
        ),
        Text(
          title,
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
