import 'package:flutter/material.dart';
import 'package:route_flutter/pages/firstPage.dart';
import 'package:route_flutter/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Flutter Router",
      debugShowCheckedModeBanner: false,
      routerConfig: AppNavigation.goRouterProvider,
    );
  }
}
