import 'package:flutter/material.dart';

import 'custom_color.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping app UI',
      theme: ThemeData(
        brightness: Brightness.light,
        accentColor: accentColor
      ),
      home: HomePage(),
    );
  }
}
