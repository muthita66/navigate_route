import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static String roteName = '/detail';

  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(title: const Text('Detail Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Item Id: ${args['itemId']}"),
            Text("Detail: ${args['message']}"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'item1 detail returned.');
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}