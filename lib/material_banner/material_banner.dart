import 'dart:async';

import 'package:asuka/asuka.dart';
import 'package:asuka/enums/asuka_type_enum.dart';
import 'package:flutter/material.dart';

import '../core/consts.dart';
import '../widgets/asuka_content_widget.dart';

///Defines the layout and behavior of a [AsukaMaterialBanner].
///
///For an example on how to use it, please check the [example] folder.

class AsukaMaterialBanner extends MaterialBanner {
  Timer? _timer;
  final Duration? duration;

  /// Inherits and implements the [MaterialBanner] from flutter material package.
  /// Creates a private named constructor.
  /// Adds a [Key] to [AsukaMaterialBanner], but it's not required.
  /// Sets a [String] to receive the content required by the user, passed by constructor.
  /// Sets a [Color] for the [AsukaMaterialBanner] required by the user, passed by constructor.
  /// Adds an [IconData] to [AsukaMaterialBanner], but it's not required.
  /// Adds an [List<Widget>] to [AsukaMaterialBanner], but it's not required.
  /// Call the constructors from [MaterialBanner] and implement it.
  /// Set [elevation] to 2.
  /// when tapped, calls the method [asuka.HideCurrentSnackBar],
  /// This method Removes the current [MaterialBanner] by running it's normal exit animation.
  /// The closed completer is called after the animation is complete.
  AsukaMaterialBanner._(
    Key? key,
    String content,
    Color background, {
    Duration? duration = const Duration(seconds: 4),
    IconData? icon,
    List<Widget>? actions,
    double elevation = 2,
    double margin = 10,
  })  : duration = duration,
        super(
          actions: actions ??
              [
                SizedBox.shrink(),
              ],
          overflowAlignment: OverflowBarAlignment.start,
          elevation: elevation,
          margin: EdgeInsets.all(margin),
          backgroundColor: background,
          content: AsukaContentWidget(
            icon: icon,
            content: content,
            actions: actions ?? [],
            type: AsukaType.materialBanner,
          ),
        );

  ///Creates a subclass of [AsukaMaterialBanner] called [AsukaMaterialBanner.Warning]
  ///passing the [key], [content], setting the [color] to [Color(0xFFE6CA72)] and the [icon] to [Icons.warning].
  ///This [AsukaMaterialBanner] was created to with the purpose of supply the user with a warning [Snackbar].
  ///
  ///Example:
  ///```
  ///ElevatedButton(
  /// onPressed: () {
  ///   asuka.AsukaMaterialBanner.warning("Warning").show();
  /// },
  /// child: const Text("Show warning"),
  ///)
  /// ```
  /// This code generates an ElevatedButton, when pressed, it calls
  /// asuka.AsukaMaterialBanner.warning("Warning").show()
  factory AsukaMaterialBanner.warning(
    String content, {
    Key? key,
    double elevation = 2,
    double margin = 10,
    Duration? duration = const Duration(seconds: 4),
  }) =>
      AsukaMaterialBanner._(
        key,
        content,
        warningConfig.color,
        icon: warningConfig.icon,
        elevation: elevation,
        margin: margin,
        duration: duration,
      );

  ///Creates a subclass of [AsukaMaterialBanner] called [AsukaMaterialBanner.Alert]
  ///passing the [key], [content], setting the [color] to [Color(0xffFA5456)] and the [icon] to [Icons.report].
  ///This [AsukaMaterialBanner] was created to with the purpose of supply the user with an alert [Snackbar].
  ///
  ///Example:
  ///```
  ///ElevatedButton(
  /// onPressed: () {
  ///   asuka.AsukaMaterialBanner.alert("Alert").show();
  /// },
  /// child: const Text("Show alert"),
  ///)
  /// ```
  /// This code generates an ElevatedButton, when pressed, it calls
  /// asuka.AsukaMaterialBanner.alert("Alert").show()
  factory AsukaMaterialBanner.alert(
    String content, {
    Key? key,
    double? width,
    double elevation = 2,
    double margin = 10,
    Duration? duration = const Duration(seconds: 4),
  }) =>
      AsukaMaterialBanner._(
        key,
        content,
        alertConfig.color,
        icon: alertConfig.icon,
        elevation: elevation,
        margin: margin,
        duration: duration,
      );

  ///Creates a subclass of [AsukaMaterialBanner] called [AsukaMaterialBanner.Info]
  ///passing the [key], [content], setting the [color] to [Color(0xff3196DA)], an [action] and the [icon] to [Icons.help].
  ///This [AsukaMaterialBanner] was created to with the purpose of supply the user with an info [Snackbar].
  ///
  ///Example:
  ///```
  ///ElevatedButton(
  /// onPressed: () {
  ///   asuka.AsukaMaterialBanner.info("Info").show();
  /// },
  /// child: const Text("Show Info"),
  ///)
  ///```
  ///This code generates an ElevatedButton, when pressed, it calls
  ///asuka.AsukaMaterialBanner.info("Info").show()
  factory AsukaMaterialBanner.info(
    String content, {
    Key? key,
    List<Widget>? actions,
    double elevation = 2,
    double margin = 10,
    Duration? duration = const Duration(seconds: 4),
  }) =>
      AsukaMaterialBanner._(
        key,
        content,
        infoConfig.color,
        actions: actions,
        icon: infoConfig.icon,
        elevation: elevation,
        margin: margin,
        duration: duration,
      );

  ///Creates a subclass of [AsukaMaterialBanner] called [AsukaMaterialBanner.Success]
  ///passing the [key], [content], setting the [color] to [Color(0xFF80AD49)], an [action] and the [icon] to [Icons.check_circle].
  ///This [AsukaMaterialBanner] was created to with the purpose of supply the user with a success [Snackbar].
  ///
  ///Example:
  ///```
  ///ElevatedButton(
  /// onPressed: () {
  ///   asuka.AsukaMaterialBanner.success("Success").show();
  /// },
  /// child: const Text("Show success"),
  ///)
  /// ```
  /// This code generates an ElevatedButton, when pressed, it calls
  /// asuka.AsukaMaterialBanner.success("Success").show()
  factory AsukaMaterialBanner.success(
    String content, {
    Key? key,
    List<Widget>? actions,
    double elevation = 2,
    double margin = 10,
    Duration? duration = const Duration(seconds: 4),
  }) =>
      AsukaMaterialBanner._(
        key,
        content,
        successConfig.color,
        actions: actions,
        icon: successConfig.icon,
        elevation: elevation,
        margin: margin,
        duration: duration,
      );

  ///Creates a subclass of [AsukaMaterialBanner] called [AsukaMaterialBanner.Message]
  ///passing the [key], [content], setting the [color] to [Color(0xff484848)].
  ///This [AsukaMaterialBanner] was created to with the purpose of supply the user with a message [Snackbar].
  ///
  ///Example:
  ///```
  ///ElevatedButton(
  /// onPressed: () {
  ///   asuka.AsukaMaterialBanner.message("Message").show();
  /// },
  /// child: const Text("Show message"),
  ///)
  /// ```
  /// This code generates an ElevatedButton, when pressed, it calls
  /// asuka.AsukaMaterialBanner.message("Message").show()
  factory AsukaMaterialBanner.message(
    String content, {
    Key? key,
    double elevation = 2,
    double margin = 10,
    Duration? duration = const Duration(seconds: 4),
  }) =>
      AsukaMaterialBanner._(
        key,
        content,
        messageConfig.color,
        elevation: elevation,
        margin: margin,
        duration: duration,
      );

  void call() => show();

  void show() {
    _timer?.cancel();
    if (duration != null) {
      _timer = Timer(duration!, () {
        Asuka.hideCurrentMaterialBanner();
      });
    }
    Asuka.showMaterialBanner(this);
  }
}
