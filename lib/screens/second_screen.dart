import 'package:flutter/material.dart';
import 'third_screen.dart';

class SecondScreen extends StatelessWidget {
  static const String id = 'second_screen';

  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'This is second screen',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 50.0),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ThirdScreen.id);
              },
              child: const Text('Go to third screen'),
            ),
          ],
        ),
      ),
    );
  }
}
