import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Foodie",
        style: FontStyles.font24BlueBold,
      ),
    );
  }
}
