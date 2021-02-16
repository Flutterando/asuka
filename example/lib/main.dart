import 'package:example/src/home_page.dart';
import 'package:flutter/material.dart';
import 'package:asuka/asuka.dart' as asuka;

import 'src/second/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: asuka.builder,
      initialRoute: '/',
      navigatorObservers: [
        asuka.asukaHeroController
      ],
      routes: {
        '/': (_) => HomePage(title: 'Asuka'),
        '/second': (_) => SecondPage(title: 'Second page'),
      },
    );
  }
}
