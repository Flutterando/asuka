import 'package:flutter/material.dart';

import 'package:asuka/asuka.dart';
import 'home.controller.dart';
import 'second/second_page.dart';

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
              //Navigator.pushNamed(context, '/second');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ));
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
          RaisedButton(
            child: Text('SnackBar Warning'),
            onPressed: () {
              AsukaSnackbar.warning("Warning").show();
            },
          ),
          RaisedButton(
            child: Text('SnackBar Success'),
            onPressed: () {
              AsukaSnackbar.success("Success").show();
            },
          ),
          RaisedButton(
            child: Text('SnackBar alert'),
            onPressed: () {
              AsukaSnackbar.alert("alert").show();
            },
          ),
          RaisedButton(
            child: Text('SnackBar info'),
            onPressed: () {
              AsukaSnackbar.info("info").show();
            },
          ),
          RaisedButton(
            child: Text('SnackBar message'),
            onPressed: () {
              AsukaSnackbar.message("message").show();
            },
          ),
          Row(
            children: [
              Hero(
                tag: "HeroTag",
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.red),
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
          TextField()
        ],
      ),
    );
  }
}
