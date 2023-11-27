import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:route_flutter/pages/firstPage.dart';

class AppNavigation {

  // make private constructor
  AppNavigation._();

  // assign initial route
  static String initRoute = '/';

  // assign nigation key with Navigator State to pop all navigation in app and get root key
  static final _rootNavigationKey = GlobalKey<NavigatorState>();

  static final GoRouter goRouterProvider = GoRouter(
    navigatorKey: _rootNavigationKey,
    initialLocation: initRoute,
    routes: <RouteBase>[
      // assign first route with FirstPage Statefull Widget
      GoRoute(
        path: '/',
        builder: (context, state) => FirstPage(),
      )
    ]
  );
}