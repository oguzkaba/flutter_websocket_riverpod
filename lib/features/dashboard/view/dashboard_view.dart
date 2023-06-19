import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/init/route/app_router.dart';

@RoutePage()
class DashboardView extends ConsumerWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsScaffold(
      routes: [
        const HomeRoute(),
        StatisticRoute(title: 'BTC/USDT Statistics', symbol: 'btcusdt')
      ],
      bottomNavigationBuilder: (context, tabsRouter) => NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: (value) => tabsRouter.setActiveIndex(value),
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home_work_rounded), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.bar_chart_rounded), label: 'Statistic')
          ]),
    );
  }
}
