import 'package:asuka/asuka.dart';
import 'package:asuka/enums/asuka_type_enum.dart';
import 'package:asuka/widgets/asuka_content_widget.dart';
import 'package:flutter/material.dart';

class HomeController {
  void onClickSnackbar() {
    Asuka.showSnackBar(const SnackBar(content: Text('New snackBar!!!')));
  }

  void onClickMaterialBanner() {
    Asuka.showMaterialBanner(
      const MaterialBanner(
        overflowAlignment: OverflowBarAlignment.start,
        backgroundColor: Colors.red,
        elevation: 1,
        content: AsukaContentWidget(
          icon: Icons.report,
          content: 'This is a Material Banner',
          actions: [],
          type: AsukaType.materialBanner,
        ),
        actions: [SizedBox.shrink()],
      ),
    );
  }

  void onClickDialog() {
    Asuka.showDialog(
      builder: (context) => AlertDialog(
        title: const Text('My Dialog'),
        content: const Text('This is Dialog Content'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Ok'),
          ),
        ],
      ),
    );
  }

  void onClickBottomSheet() {
    Asuka.showBottomSheet((context) {
      return Material(
        elevation: 7,
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          child: ListView(
            children: [
              const ListTile(
                title: Text('Option 1'),
              ),
              const ListTile(
                title: Text('Option 2'),
              ),
              ListTile(
                title: const Text('Cancel'),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      );
    });
  }

  void onClickModalBottomSheet() {
    Asuka.showModalBottomSheet(
      builder: (context) => Material(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        elevation: 7,
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          child: ListView(
            children: [
              const ListTile(
                title: Text('Option 1'),
              ),
              const ListTile(
                title: Text('Option 2'),
              ),
              ListTile(
                title: const Text('Cancel'),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
