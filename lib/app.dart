import 'package:flutter/material.dart';

import 'core/init/route/app_router.dart';
import 'core/init/theme/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.instance.darkTheme,
      themeMode: ThemeMode.dark,
      routerConfig: appRouter.config(),
    );
  }
}
