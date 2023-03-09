import 'package:flutter/material.dart';
import 'package:navigation_and_routing/utils/routers_name.dart';

class ScreenTwo extends StatefulWidget {
  dynamic data;
  ScreenTwo({
    super.key,
    required this.data,
  });

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    // final argumenst = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Two'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.data['Node']
                // argumenst['name'].toString(),
                ),
            const SizedBox(
              height: 20,
            ),
            Text(widget.data['Flutter']),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteName.screenThree);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const ScreenThree(
                //       name: 'Ghayoor Hussain',
                //       num: 100,
                //     ),
                //   ),
                // );
              },
              child: Container(
                decoration: const BoxDecoration(color: Colors.amber),
                height: 50,
                width: double.infinity,
                child: const Center(
                  child: Text('Screen Two'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
