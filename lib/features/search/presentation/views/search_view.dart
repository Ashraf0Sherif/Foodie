import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/features/search/logic/search_cubit/search_cubit.dart';

import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';
import '../widgets/search_view_food_items_bloc_builder.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late final TextEditingController _searchController;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _searchController = context.read<SearchCubit>().searchController;
    _scrollController = context.read<SearchCubit>().scrollController;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Form(
            key: _formKey,
            child: TextFormField(
              controller: _searchController,
              onFieldSubmitted: (value) {
                if (value == '' || value.isEmpty) return;
                context.read<SearchCubit>().emitSearchStates();
              },
              validator: (value) =>
                  value!.isEmpty ? S.of(context).enterSearchQuery : null,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    _searchController.clear();
                    context.read<SearchCubit>().emitSearchStates();
                  },
                ),
                hintText: _searchController.text == ''
                    ? S.of(context).search
                    : _searchController.text,
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
