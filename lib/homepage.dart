import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 90,
            ),
            const Text(
              '0.00',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const Text('Eth', style: TextStyle(fontSize: 25)),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Send Eth')),
                ElevatedButton(
                    onPressed: () {}, child: const Text('Receive Eth')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
