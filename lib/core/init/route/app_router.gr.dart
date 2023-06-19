// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardView(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashView(),
      );
    },
    StatisticRoute.name: (routeData) {
      final args = routeData.argsAs<StatisticRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: StatisticView(
          title: args.title,
          symbol: args.symbol,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [DashboardView]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashView]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StatisticView]
class StatisticRoute extends PageRouteInfo<StatisticRouteArgs> {
  StatisticRoute({
    required String title,
    required String symbol,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          StatisticRoute.name,
          args: StatisticRouteArgs(
            title: title,
            symbol: symbol,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'StatisticRoute';

  static const PageInfo<StatisticRouteArgs> page =
      PageInfo<StatisticRouteArgs>(name);
}

class StatisticRouteArgs {
  const StatisticRouteArgs({
    required this.title,
    required this.symbol,
    this.key,
  });

  final String title;

  final String symbol;

  final Key? key;

  @override
  String toString() {
    return 'StatisticRouteArgs{title: $title, symbol: $symbol, key: $key}';
  }
}
