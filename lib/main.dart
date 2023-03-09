import 'package:flutter/material.dart';
import 'package:navigation_and_routing/home_screen.dart';
import 'package:navigation_and_routing/screen_three.dart';
import 'package:navigation_and_routing/screen_two.dart';
import 'package:navigation_and_routing/utils/routers_name.dart';
import 'package:navigation_and_routing/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation And Routing',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: RouteName.homeScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
