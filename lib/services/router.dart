import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:not_a_mess/dashboard.dart';
import 'package:not_a_mess/issues_screen.dart';
import 'package:not_a_mess/registration.dart';
import 'package:not_a_mess/services/route_constants.dart';
import 'package:not_a_mess/widgets/star_rating.dart';
import '../menu.dart';
import '../rating.dart';

class AppRouter {
  GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: RouteConstants.register,
            path: '/',
            pageBuilder: (context, state) {
              return MaterialPage(child: Register());
            }),
        GoRoute(
          name: RouteConstants.menu,
            path: '/menu',
            pageBuilder: (context, state) {
              return MaterialPage(child: Menu());
            }),
        GoRoute(
            name: RouteConstants.dashboard,
            path: '/dashboard',
            pageBuilder: (context, state) {
              return MaterialPage(child: Dashboard());
            }),
        GoRoute(
            name: RouteConstants.rating,
            path: '/rating',
            pageBuilder: (context, state) {
              return MaterialPage(child: Ratings());
            }),
        GoRoute(
            name: RouteConstants.issues,
            path: '/issues',
            pageBuilder: (context, state) {
              return MaterialPage(child: ChatScreen());
            }),
      ],
      redirect: (context, state) async {
        bool isRegistered = true;
        // created this dummy service to control the navigation
        // when the user is authenticated and not.

        if (!isRegistered && state.subloc == '/') {
          // subloc is used to check
          // whether the user is authenticated
          // or not, when he first lands on the
          // Registration screen.

          return RouteConstants.menu;
        }
        return null;
      });
}
