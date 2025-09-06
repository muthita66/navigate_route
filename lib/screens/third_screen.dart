import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  static String routeName = '/third';

  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, String>? ?? {};

    return Scaffold(
      appBar: AppBar(title: const Text('Third Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Item id: ${args['ItemId']}'),
            Text('Detail: ${args['massage']}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'Go Back from ThirdScreen.');
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
