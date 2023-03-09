import 'package:flutter/material.dart';
import 'package:navigation_and_routing/home_screen.dart';
import 'package:navigation_and_routing/screen_three.dart';
import 'package:navigation_and_routing/screen_two.dart';
import 'package:navigation_and_routing/utils/routers_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RouteName.screenTwo:
        return MaterialPageRoute(
          builder: (context) => ScreenTwo(
            data: routeSettings.arguments as Map,
          ),
        );
      case RouteName.screenThree:
        return MaterialPageRoute(builder: (context) => const ScreenThree());
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('No Route is Define'),
            ),
          ),
        );
    }
  }
}
