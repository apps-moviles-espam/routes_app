import 'package:flutter/material.dart';
import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  static const String id = 'first_screen';

  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'This is first screen',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 50.0),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, SecondScreen.id);
              },
              child: const Text('Go to second screen'),
            ),
          ],
        ),
      ),
    );
  }
}
