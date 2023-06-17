import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_websocket_riverpod/core/init/theme/theme.dart';
import 'package:flutter_websocket_riverpod/features/home/view/home_view.dart';

import 'core/init/logger/logger.dart';

void main() {
  runApp(ProviderScope(
    observers: <ProviderObserver>[Logger()],
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.instance.darkTheme,
      themeMode: ThemeMode.dark,
      home: const HomeView(),
    );
  }
}
