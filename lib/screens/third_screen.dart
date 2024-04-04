import 'package:flutter/material.dart';
import 'first_screen.dart';

class ThirdScreen extends StatelessWidget {
  static const String id = 'third_screen';

  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'This is third screen',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 50.0),
            TextButton(
              onPressed: () {
                // This adds a new first screen on top of stack.
                Navigator.pushNamed(context, FirstScreen.id);
              },
              child: const Text('Go to first screen'),
            ),
            TextButton(
              onPressed: () {
                // This removes all screens from stack and leaves just the first one.
                // The final result may look the same no matter what button you tap, as
                // you see first screen anyway. But please do understand it's actually
                // really different.
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: const Text('Remove all from stack'),
            ),
          ],
        ),
      ),
    );
  }
}
