import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_guitar_tuner/features/about_page.dart';
import 'package:mini_guitar_tuner/features/home/home_page.dart';
import 'package:mini_guitar_tuner/features/settings_page.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/settings',
          builder: (BuildContext context, GoRouterState state) {
            return const SettingsPage();
          },
        ),
        GoRoute(
          path: '/about',
          builder: (BuildContext context, GoRouterState state) {
            return const AboutPage();
          },
        ),
      ],
    ),
  ],
);