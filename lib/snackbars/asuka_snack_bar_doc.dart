import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter/material.dart';

///Defines the layout and behavior of a [AsukaSnackbar].
///
///For an example on how to use it, please check the [example] folder.

class AsukaSnackbar extends SnackBar {
  /// Inherits and implements the [SnackBar] from flutter material package.
  /// Creates a private named constructor.
  /// Adds a [Key] to [AsukaSnackbar], but it's not required.
  /// Sets a [String] to receive the content required by the user, passed by constructor.
  /// Sets a [Color] for the [AsukaSnackbar] required by the user, passed by constructor.
  /// Adds an [IconData] to [AsukaSnackbar], but it's not required.
  /// Adds an [SnackBarAction] to [AsukaSnackbar], but it's not required.
  /// Call the constructors from [SnackBar] and implement it.
  /// Set [elevation] to 2.
  /// Sets the desired [backgroundColor] to the one passed by constructor.
  /// Sets the desired [action] to the one passed by constructor.
  /// Create a shape for [AsukaSnackbar] using [RoundedRectangleBorder].
  /// Sets the [borderRadius] to [BorderRadius.Circular] with value 4.
  /// Sets the behavior of [AsukaSnackbar] to float above the other widgets.
  /// Creats a [Row] for the [icon], [Text] and [action], checks if [icon] is different from [null] if the
  /// condition is [true], add an [Icon] to the [Row] with fixed [size] 20 and [color] [Colors.black45].
  /// Adds a [SizedBox] with fixed [width] 10 to separate the [Icon] from the [Text].
  /// Adds and [Expanded] to the [Text], passing the [content] as the [Text], setting
  /// the style with [TextStyle], using a fixed [fontSize] of 16 and the [color]: [Colors.white].
  /// Checks if [action] is equal to [null], if the condition is true,
  /// adds an [InkWell] to the [row], adding an [Icon] with fixed [Icons] and [color],
  /// when tapped, calls the method [asuka.HideCurrentSnackBar],
  /// This method Removes the current [SnackBar] by running it's normal exit animation.
  /// The closed completer is called after the animation is complete.
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
                  onTap: asuka.hideCurrentSnackBar, //
                )
            ],
          ),
        );

  ///Creates a subclass of [AsukaSnackbar] called [AsukaSnackbar.Warning]
  ///passing the [key], [content], setting the [color] to [Color(0xFFE6CA72)] and the [icon] to [Icons.warning].
  ///This [AsukaSnackbar] was created to with the purpose of supply the user with a warning [Snackbar].
  factory AsukaSnackbar.warning(String content, {Key? key}) =>
      AsukaSnackbar._(key, content, Color(0xFFE6CA72), icon: Icons.warning);

  ///Creates a subclass of [AsukaSnackbar] called [AsukaSnackbar.Alert]
  ///passing the [key], [content], setting the [color] to [Color(0xffFA5456)] and the [icon] to [Icons.report].
  ///This [AsukaSnackbar] was created to with the purpose of supply the user with an alert [Snackbar].
  factory AsukaSnackbar.alert(String content, {Key? key}) =>
      AsukaSnackbar._(key, content, Color(0xffFA5456), icon: Icons.report);

  ///Creates a subclass of [AsukaSnackbar] called [AsukaSnackbar.Info]
  ///passing the [key], [content], setting the [color] to [Color(0xff3196DA)], an [action] and the [icon] to [Icons.help].
  ///This [AsukaSnackbar] was created to with the purpose of supply the user with an info [Snackbar].
  factory AsukaSnackbar.info(String content,
          {Key? key, SnackBarAction? snackBarAction}) =>
      AsukaSnackbar._(key, content, Color(0xff3196DA),
          action: snackBarAction, icon: Icons.help);

  ///Creates a subclass of [AsukaSnackbar] called [AsukaSnackbar.Success]
  ///passing the [key], [content], setting the [color] to [Color(0xFF80AD49)], an [action] and the [icon] to [Icons.check_circle].
  ///This [AsukaSnackbar] was created to with the purpose of supply the user with a success [Snackbar].
  factory AsukaSnackbar.success(String content,
          {Key? key, SnackBarAction? snackBarAction}) =>
      AsukaSnackbar._(key, content, Color(0xFF80AD49),
          action: snackBarAction, icon: Icons.check_circle);

  ///Creates a subclass of [AsukaSnackbar] called [AsukaSnackbar.Message]
  ///passing the [key], [content], setting the [color] to [Color(0xff484848)].
  ///This [AsukaSnackbar] was created to with the purpose of supply the user with a message [Snackbar].

  factory AsukaSnackbar.message(String content, {Key? key}) =>
      AsukaSnackbar._(key, content, Color(0xff484848));
}
