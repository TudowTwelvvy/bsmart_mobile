import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Centralized route configuration.
class AppRouter {
  AppRouter._();

  static const bool isAuthenticated = false;

  static final GoRouter router = GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true, // Prints route changes to console

    routes: [
      GoRoute(
        path: '/',
        name: 'splash',
        builder: (context, state) => const Placeholder(
          child: Center(child: Text('Splash Screen - Coming soon')),
        ),
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const Placeholder(
          child: Center(child: Text('Login Screen - Coming soon')),
        ),
      ),
      GoRoute(
        path: '/register',
        name: 'register',
        builder: (context, state) => const Placeholder(
          child: Center(child: Text('Register Screen - Coming soon')),
        ),
      ),
      GoRoute(
        path: '/menu',
        name: 'menu',
        builder: (context, state) => const Placeholder(
          child: Center(child: Text('Main Menu - Coming soon')),
        ),
      ),
      GoRoute(
        path: '/clocking',
        name: 'clocking',
        builder: (context, state) => const Placeholder(
          child: Center(child: Text('Clocking - Coming soon')),
        ),
      ),
      GoRoute(
        path: '/switch',
        name: 'switch',
        builder: (context, state) => const Placeholder(
          child: Center(child: Text('Switch - Coming soon')),
        ),
      ),
      GoRoute(
        path: '/sync',
        name: 'sync',
        builder: (context, state) => const Placeholder(
          child: Center(child: Text('Synchronise - Coming soon')),
        ),
      ),
      GoRoute(
        path: '/config',
        name: 'config',
        builder: (context, state) => const Placeholder(
          child: Center(child: Text('Configuration - Coming soon')),
        ),
      ),
    ],
    redirect: (context, state) {
      // User is not logged in and wants to access /menu
      if (!isAuthenticated && state.uri.path == '/menu') {
        return '/';
      }
      // Allow navigation
      return null;
    },
  );
}
