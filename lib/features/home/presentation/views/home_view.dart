import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/features/home/presentation/widgets/home_view_body.dart';

import '../../../../core/logic/internet_connection_cubit/internet_connection_cubit.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/no_internet_connection_widget.dart';
import '../../logic/banner_cubit/banner_cubit.dart';
import '../../logic/food_categories_cubit/food_categories_cubit.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InternetConnectionCubit, InternetConnectionState>(
      buildWhen: (previous, current) =>
          (previous is NotConnected && current is Connected) ||
          (previous is InitialConnection && current is Connected) ||
          (previous is InitialConnection && current is NotConnected),
      builder: (context, state) {
        if ((context.read<InternetConnectionCubit>().previousState
                    is Connected &&
                state is NotConnected) ||
            state is InitialConnection ||
            state is Connected) {
          return const HomeViewBody();
        } else {
          return state.maybeWhen(orElse: () {
            return const SizedBox.shrink();
          }, notConnected: () {
            return const NoInternetConnectionWidget();
          });
        }
      },
    );
  }
}
