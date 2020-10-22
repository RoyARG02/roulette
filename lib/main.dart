import 'package:flutter/material.dart';

import 'package:roulette/themes/dark_theme.dart';
import 'package:roulette/themes/light_theme.dart';

import 'package:roulette/views/roulette.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roulette',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: Roulette(),
    );
  }
}
