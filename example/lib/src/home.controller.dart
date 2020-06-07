import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter/material.dart';

class HomeController {
  void onClickSnackbar() {
    asuka.showSnackBar(SnackBar(content: Text('New snackBar!!!')));
  }

  void onClickDialog() {
    asuka.showDialog(
      builder: (context) => AlertDialog(
        title: Text('My Dialog'),
        content: Text('This is Dialog Content'),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
          ),
          FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Ok'),
          ),
        ],
      ),
    );
  }

  void onClickModalSheet() {
    asuka.showBottomSheet((context) {
      return Material(
        elevation: 7,
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          child: ListView(
            children: [
              ListTile(
                title: Text('Option 1'),
              ),
              ListTile(
                title: Text('Option 2'),
              ),
              ListTile(
                title: Text('Cancel'),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      );
    });
  }
}
