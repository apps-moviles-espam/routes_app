import 'package:flutter/material.dart';

import 'screens/first_screen.dart';
import 'screens/second_screen.dart';
import 'screens/third_screen.dart';

void main() {
  runApp(const RoutesApp());
}

class RoutesApp extends StatelessWidget {
  const RoutesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // This is the important part here: initialRoute and routes. See how we declare
      // the routes (screens) for our app using a map (what you may already know as a
      // dictionary in other programming languages).
      // Once you are OK with these two properties, for each of the screens have a look at
      // two things: 1) the way we declare a static constant `id`, which value is actually
      // not important at all, as long as all of them get different values; and 2) how we
      // navigate to different routes (screens) using the onPressed event on TextButton.
      initialRoute: FirstScreen.id,
      routes: {
        FirstScreen.id: (context) => const FirstScreen(),
        SecondScreen.id: (context) => const SecondScreen(),
        ThirdScreen.id: (context) => const ThirdScreen(),
      },
    );
  }
}
