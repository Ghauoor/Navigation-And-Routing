import 'package:flutter/material.dart';
import 'package:navigation_and_routing/utils/routers_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteName.screenTwo, arguments: {
                  'Node': 'jS',
                  'Flutter': 'Dart',
                });

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const ScreenTwo(
                //       name: 'Ghayoor Hussain',
                //     ),
                //   ),
                // );
              },
              child: Container(
                decoration: const BoxDecoration(color: Colors.amber),
                height: 50,
                width: double.infinity,
                child: const Center(
                  child: Text('Screen One'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
