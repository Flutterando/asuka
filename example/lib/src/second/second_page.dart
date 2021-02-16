import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String title;

  const SecondPage({Key key, this.title}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Asuka"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Hero(
                tag: "HeroTag",
                child: Container(
                  height: 100,
                  color: Colors.red,
                ),
              ),
              TextField(),
              RaisedButton(
                  child: Text('Back to Home'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              RaisedButton(
                  child: Text('Back to Home'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              RaisedButton(
                  child: Text('Back to Home'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              RaisedButton(
                  child: Text('Back to Home'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              RaisedButton(
                  child: Text('Back to Home'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              RaisedButton(
                  child: Text('Back to Home'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              RaisedButton(
                  child: Text('Back to Home'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              RaisedButton(
                  child: Text('Back to Home'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              RaisedButton(
                  child: Text('Back to Home'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              RaisedButton(
                  child: Text('Back to Home'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ));
  }
}
