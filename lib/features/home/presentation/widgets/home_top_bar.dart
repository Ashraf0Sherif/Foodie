import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        S.of(context).foodie,
        style: FontStyles.font24SecondaryColorBold,
      ),
    );
  }
}
