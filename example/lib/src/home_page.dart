import 'package:asuka/snackbars/asuka_snack_bar.dart';
import 'package:flutter/material.dart';

import 'home.controller.dart';
import 'second/second_page.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Asuka"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ElevatedButton(
            child: const Text('Second Page'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecondPage(),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: homeController.onClickSnackbar,
            child: const Text('SnackBar'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: homeController.onClickDialog,
            child: const Text('Dialog'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            child: const Text('ModalSheet'),
            onPressed: () => homeController.onClickBottomSheet(),
          ),
          ElevatedButton(
            child: const Text('SnackBar Warning'),
            onPressed: () {
              AsukaSnackbar.warning("Warning").show();
            },
          ),
          ElevatedButton(
            child: const Text('SnackBar Success'),
            onPressed: () {
              AsukaSnackbar.success("Success").show();
            },
          ),
          ElevatedButton(
            child: const Text('SnackBar alert'),
            onPressed: () {
              AsukaSnackbar.alert("alert").show();
            },
          ),
          ElevatedButton(
            child: const Text('SnackBar info'),
            onPressed: () {
              AsukaSnackbar.info("info").show();
            },
          ),
          ElevatedButton(
            child: const Text('SnackBar message'),
            onPressed: () {
              AsukaSnackbar.message("message").show();
            },
          ),
          Row(
            children: [
              Hero(
                tag: "HeroTag",
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.red),
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
          const TextField(),
          ElevatedButton(
            child: const Text('Show Modal Bottom Sheet'),
            onPressed: () {
              homeController.onClickModalBottomSheet();
            },
          ),
        ],
      ),
    );
  }
}
