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
        accentColor: accentColor,
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          elevation: 0,
          iconTheme: IconThemeData(color:Colors.black),
          textTheme: TextTheme(title: TextStyle(color:Colors.black)),
          color: backgroundColor
        )
      ),
      home: HomePage(),
    );
  }
}
