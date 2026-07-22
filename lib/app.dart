import 'package:flutter/material.dart';

import 'config/routes.dart';
import 'config/theme.dart';

/// Root application widget.

// main.dart handles initialization.
// app.dart handles application configuration.

class BSmartApp extends StatelessWidget {
  const BSmartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // MaterialApp.router is required for GoRouter.
      title: 'BSmart Mobile',
      debugShowCheckedModeBanner: false,

      // Application themes
      theme: BSmartTheme.lightTheme,
      darkTheme: BSmartTheme.darkTheme,

      // Navigation
      routerConfig: AppRouter.router,
    );
  }
}
