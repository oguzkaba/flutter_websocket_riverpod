import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../features/dashboard/view/dashboard_view.dart';
import '../../../features/home/view/home_view.dart';
import '../../../features/splash/splash_view.dart';
import '../../../features/statistic/view/statistic_view.dart';
import '../../constants/app/app_routes_constant.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: AppRoutesConstant.routeSplash,
          initial: true,
        ),
        // AutoRoute(
        //   page: LoginRoute.page,
        //   path: AppRoutesConstant.routeAuthLogin,
        // ),
        // AutoRoute(
        //   page: RegisterRoute.page,
        //   path: AppRoutesConstant.routeAuthRegister,
        // ),
        AutoRoute(
            page: DashboardRoute.page,
            path: AppRoutesConstant.routeDashboard,
            children: [
              AutoRoute(
                page: HomeRoute.page,
                path: AppRoutesConstant.routeHome,
                initial: true,
              ),
              AutoRoute(
                page: StatisticRoute.page,
                path: AppRoutesConstant.routeStatistic,
              ),
            ]),
        //  AutoRoute(
        //   page: UserDetailRoute.page,
        //   path: AppRoutes.routeAdminUserDetail,
        //   fullscreenDialog: true,
        // ),
        // AutoRoute(
        //   page: UnknownRoute.page,
        //   path: '*',
        // ),
      ];
}
