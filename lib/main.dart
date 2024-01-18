import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        '/welcomepage': (context) => const WelcomePage(),
        // '/home': (context) => Homepage(),
      },
    );
  }
}
