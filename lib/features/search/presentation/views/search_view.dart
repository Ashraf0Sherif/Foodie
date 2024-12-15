import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/widgets/food_items_list_view.dart';
import 'package:foodie/features/search/logic/search_cubit/search_cubit.dart';
import 'package:foodie/features/search/presentation/widgets/empty_search_bar_widget.dart';
import 'package:foodie/features/search/presentation/widgets/no_food_item_found_widget.dart';

import '../../../../core/theming/styles.dart';
import '../../../../core/ui_constants.dart';
import '../widgets/search_view_food_items_bloc_builder.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final int view = 1;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Form(
            key: _formKey,
            child: TextFormField(
              onFieldSubmitted: (value) {
                if (value == '' || value.isEmpty) return;
                context.read<SearchCubit>().search(value);
              },
              validator: (value) =>
                  value!.isEmpty ? 'Enter search query' : null,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                hintStyle: FontStyles.font14GreyRegular,
              ),
            ),
          ),
        ),
        const SearchViewFoodItemsBlocBuilder(),
      ],
    );
  }
}
