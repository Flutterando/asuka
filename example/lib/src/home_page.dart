import 'package:flutter/material.dart';

import 'home.controller.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text("Asuka"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          RaisedButton(
            child: Text('Second Page'),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          RaisedButton(
            child: Text('SnackBar'),
            onPressed: homeController.onClickSnackbar,
          ),
          SizedBox(height: 10),
          RaisedButton(
            child: Text('Dialog'),
            onPressed: homeController.onClickDialog,
          ),
          SizedBox(height: 10),
          RaisedButton(
            child: Text('ModalSheet'),
            onPressed: homeController.onClickModalSheet,
          ),
        ],
      ),
    );
  }
}
