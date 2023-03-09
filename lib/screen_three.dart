import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({
    super.key,
  });

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Three'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(''),
            const Text(''),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(color: Colors.amber),
                height: 50,
                width: double.infinity,
                child: const Center(
                  child: Text('Screen Three'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
