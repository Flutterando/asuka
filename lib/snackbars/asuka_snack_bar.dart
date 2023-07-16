import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';

///Defines the layout and behavior of a [AsukaSnackbar].
///
///For an example on how to use it, please check the [example] folder.

class AsukaSnackbar extends SnackBar {
  final AsukaVerticalPosition verticalPosition;
  final double top;

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
    AsukaVerticalPosition? verticalPosition,
    double? top,
    IconData? icon,
    SnackBarAction? action,
    double? width,
    double elevation = 2,
  })  : verticalPosition = verticalPosition ?? AsukaVerticalPosition.bottom,
        top = top ?? 100,
        super(
          width: width,
          elevation: elevation,
          backgroundColor: background,
          action: action,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              4,
            ),
          ),
          margin: EdgeInsets.only(
            bottom: 800,
          ),
          behavior: SnackBarBehavior.floating,
          content: Row(
            mainAxisSize: MainAxisSize.min,
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
                  onTap: Asuka.hideCurrentSnackBar, //
                )
            ],
          ),
        );

  ///Creates a subclass of [AsukaSnackbar] called [AsukaSnackbar.Warning]
  ///passing the [key], [content], setting the [color] to [Color(0xFFE6CA72)] and the [icon] to [Icons.warning].
  ///This [AsukaSnackbar] was created to with the purpose of supply the user with a warning [Snackbar].
  ///
  ///Example:
  ///```
  ///ElevatedButton(
  /// onPressed: () {
  ///   asuka.AsukaSnackbar.warning("Warning").show();
  /// },
  /// child: const Text("Show warning"),
  ///)
  /// ```
  /// This code generates an ElevatedButton, when pressed, it calls
  /// asuka.AsukaSnackbar.warning("Warning").show()
  factory AsukaSnackbar.warning(
    String content, {
    Key? key,
    double? width,
    double elevation = 2,
    double? top,
  }) =>
      AsukaSnackbar._(
        key,
        content,
        Color(0xFFE6CA72),
        icon: Icons.warning,
        width: width,
        elevation: elevation,
        top: top,
      );

  ///Creates a subclass of [AsukaSnackbar] called [AsukaSnackbar.Alert]
  ///passing the [key], [content], setting the [color] to [Color(0xffFA5456)] and the [icon] to [Icons.report].
  ///This [AsukaSnackbar] was created to with the purpose of supply the user with an alert [Snackbar].
  ///
  ///Example:
  ///```
  ///ElevatedButton(
  /// onPressed: () {
  ///   asuka.AsukaSnackbar.alert("Alert").show();
  /// },
  /// child: const Text("Show alert"),
  ///)
  /// ```
  /// This code generates an ElevatedButton, when pressed, it calls
  /// asuka.AsukaSnackbar.alert("Alert").show()
  factory AsukaSnackbar.alert(
    String content, {
    Key? key,
    double? width,
    double elevation = 2,
    double? top,
  }) =>
      AsukaSnackbar._(
        key,
        content,
        Color(0xffFA5456),
        icon: Icons.report,
        width: width,
        elevation: elevation,
        top: top,
      );

  ///Creates a subclass of [AsukaSnackbar] called [AsukaSnackbar.Info]
  ///passing the [key], [content], setting the [color] to [Color(0xff3196DA)], an [action] and the [icon] to [Icons.help].
  ///This [AsukaSnackbar] was created to with the purpose of supply the user with an info [Snackbar].
  ///
  ///Example:
  ///```
  ///ElevatedButton(
  /// onPressed: () {
  ///   asuka.AsukaSnackbar.info("Info").show();
  /// },
  /// child: const Text("Show Info"),
  ///)
  ///```
  ///This code generates an ElevatedButton, when pressed, it calls
  ///asuka.AsukaSnackbar.info("Info").show()
  factory AsukaSnackbar.info(
    String content, {
    Key? key,
    SnackBarAction? snackBarAction,
    double? width,
    double elevation = 2,
    double? top,
    AsukaVerticalPosition verticalPosition = AsukaVerticalPosition.bottom,
  }) =>
      AsukaSnackbar._(
        key,
        content,
        Color(0xff3196DA),
        action: snackBarAction,
        icon: Icons.help,
        width: width,
        elevation: elevation,
        verticalPosition: verticalPosition,
        top: top,
      );

  ///Creates a subclass of [AsukaSnackbar] called [AsukaSnackbar.Success]
  ///passing the [key], [content], setting the [color] to [Color(0xFF80AD49)], an [action] and the [icon] to [Icons.check_circle].
  ///This [AsukaSnackbar] was created to with the purpose of supply the user with a success [Snackbar].
  ///
  ///Example:
  ///```
  ///ElevatedButton(
  /// onPressed: () {
  ///   asuka.AsukaSnackbar.success("Success").show();
  /// },
  /// child: const Text("Show success"),
  ///)
  /// ```
  /// This code generates an ElevatedButton, when pressed, it calls
  /// asuka.AsukaSnackbar.success("Success").show()
  factory AsukaSnackbar.success(
    String content, {
    Key? key,
    SnackBarAction? snackBarAction,
    double? width,
    double elevation = 2,
    double? top,
    AsukaVerticalPosition verticalPosition = AsukaVerticalPosition.bottom,
  }) =>
      AsukaSnackbar._(
        key,
        content,
        Color(0xFF80AD49),
        action: snackBarAction,
        icon: Icons.check_circle,
        width: width,
        elevation: elevation,
        verticalPosition: verticalPosition,
        top: top,
      );

  ///Creates a subclass of [AsukaSnackbar] called [AsukaSnackbar.Message]
  ///passing the [key], [content], setting the [color] to [Color(0xff484848)].
  ///This [AsukaSnackbar] was created to with the purpose of supply the user with a message [Snackbar].
  ///
  ///Example:
  ///```
  ///ElevatedButton(
  /// onPressed: () {
  ///   asuka.AsukaSnackbar.message("Message").show();
  /// },
  /// child: const Text("Show message"),
  ///)
  /// ```
  /// This code generates an ElevatedButton, when pressed, it calls
  /// asuka.AsukaSnackbar.message("Message").show()
  factory AsukaSnackbar.message(
    String content, {
    Key? key,
    double? width,
    double elevation = 2,
    AsukaVerticalPosition verticalPosition = AsukaVerticalPosition.bottom,
    double? top,
  }) =>
      AsukaSnackbar._(
        key,
        content,
        Color(0xff484848),
        width: width,
        elevation: elevation,
        verticalPosition: verticalPosition,
        top: top,
      );

  void call() => show();

  void show() => Asuka.showSnackBar(
        this,
        verticalPosition: verticalPosition,
        top: top,
      );
}
