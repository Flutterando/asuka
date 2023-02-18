import 'package:asuka/asuka.dart';
import 'package:example/src/home_page.dart';
import 'package:flutter/material.dart';

import 'src/second/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: Asuka.builder,
      initialRoute: '/',
      navigatorObservers: [
        Asuka.asukaHeroController
      ],
      routes: {
        '/': (_) => const HomePage(title: 'Asuka'),
        '/second': (_) => const SecondPage(title: 'Second page'),
      },
    );
  }
}
