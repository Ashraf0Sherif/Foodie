import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  final List<String> categories = const [
    "All",
    "Pizzas",
    "Burgers",
    "Drinks",
    "Beverages",
    "Desserts",
  ];
  int _selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              onPressed: () {
                setState(() {
                  _selectedCategory = index;
                });
              },
              child: Text(
                categories[index],
                style: FontStyles.font15BlueMedium.copyWith(
                  color: _selectedCategory == index
                      ? ColorsStyles.kPrimaryColor
                      : Colors.grey,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
