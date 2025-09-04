import 'package:flutter/material.dart';
import 'package:navigate_route/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  static String roteName = '/detail';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(
                  context,
                  DetailScreen.roteName, // หรือ routeName ถ้าแก้ชื่อแล้ว
                  arguments: {
                    'itemId': '1234',
                    'message': 'Hello from HomeScreen',
                  },
                );
                print("ได้ค่ากลับมาคือ: $result");
              },
              child: const Text('Go to Detail Screen'),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Go to Third Screen')),
          ],
        ),
      ),
    );
  }
}
