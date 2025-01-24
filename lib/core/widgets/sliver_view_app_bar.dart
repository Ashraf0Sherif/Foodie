import 'package:flutter/material.dart';

import '../theming/styles.dart';

class SliverViewAppBar extends StatelessWidget {
  const SliverViewAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: FontStyles.font24SecondaryColorBold,
      ),
    );
  }
}
