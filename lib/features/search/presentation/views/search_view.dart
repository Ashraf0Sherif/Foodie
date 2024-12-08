import 'package:flutter/material.dart';
import 'package:foodie/core/widgets/food_items_list_view.dart';
import 'package:foodie/features/search/presentation/widgets/empty_search_bar_widget.dart';
import 'package:foodie/features/search/presentation/widgets/no_food_item_found_widget.dart';
import 'package:foodie/features/search/presentation/widgets/recent_search_widget.dart';

import '../../../../core/constants.dart';
import '../../../../core/theming/styles.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final int view = 1;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search',
              hintStyle: FontStyles.font14GreyRegular,
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
            child: const EmptySearchBarWidget(),
          ),
        ),
      ],
    );
  }
}
