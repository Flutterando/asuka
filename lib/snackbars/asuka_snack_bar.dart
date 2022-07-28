import 'package:flutter/material.dart';
import 'package:asuka/asuka.dart';

class AsukaSnackbar extends SnackBar {
  AsukaSnackbar._(
    Key? key,
    String content,
    Color background, {
    IconData? icon,
    SnackBarAction? action,
  }) : super(
          elevation: 2,
          backgroundColor: background,
          action: action,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              4,
            ),
          ),
          behavior: SnackBarBehavior.floating,
          content: Row(
            children: [
              if (icon != null) ...[
                Icon(
                  icon,
                  size: 20,
                  color: Colors.black45,
                ),
                SizedBox(width: 10)
              ],
              Expanded(
                child: Text(
                  content,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              if (action == null)
                InkWell(
                  child: Icon(Icons.close, color: Colors.white),
                  onTap: asuka.hideCurrentSnackBar,
                )
            ],
          ),
        );

  factory AsukaSnackbar.warning(String content, {Key? key}) =>
      AsukaSnackbar._(key, content, Color(0xFFE6CA72), icon: Icons.warning);

  factory AsukaSnackbar.alert(String content, {Key? key}) =>
      AsukaSnackbar._(key, content, Color(0xffFA5456), icon: Icons.report);

  factory AsukaSnackbar.info(String content,
          {Key? key, SnackBarAction? snackBarAction}) =>
      AsukaSnackbar._(key, content, Color(0xff3196DA),
          action: snackBarAction, icon: Icons.help);

  factory AsukaSnackbar.success(String content,
          {Key? key, SnackBarAction? snackBarAction}) =>
      AsukaSnackbar._(key, content, Color(0xFF80AD49),
          action: snackBarAction, icon: Icons.check_circle);

  factory AsukaSnackbar.message(String content, {Key? key}) =>
      AsukaSnackbar._(key, content, Color(0xff484848));

  void call() => show();

  void show() => asuka.showSnackBar(this);
}
