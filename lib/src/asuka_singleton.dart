import 'dart:ui';

import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';

final _keyScaff = GlobalKey<material.ScaffoldState>();
_ListenerInterface? _dialogs;
Function? _callback;
const Asuka = _Asuka._();

class _Asuka {
  const _Asuka._();
  static void _checkBuilderIsInMaterialApp() {
    assert(_keyScaff.currentState != null,
        """Add asuka.builder in your MaterialApp;

       return MaterialApp(
         builder: asuka.builder,
         ...
  """);
  }

  static void _checkAndInvokeCallback() {
    assert(_callback != null,
        "Provide a callback function in the app main file for invoking it.");

    _callback!();
  }

  /// Insert the given entry into the overlay.
  ///
  /// If `below` is non-null, the entry is inserted just below `below`.
  /// If `above` is non-null, the entry is inserted just above `above`.
  /// Otherwise, the entry is inserted on top.
  ///
  /// It is an error to specify both `above` and `below`.
  void addOverlay(OverlayEntry entry,
      {OverlayEntry? below, OverlayEntry? above, bool callback = false}) {
    _checkBuilderIsInMaterialApp();
    if (callback) _checkAndInvokeCallback();
    if (_keyScaff.currentContext != null) {
      OverlayState? overlay = Overlay.of(_keyScaff.currentContext!);
      overlay.insert(entry, below: below, above: above);
    }
  }

  /// Insert all the entries in the given iterable.
  ///
  /// If `below` is non-null, the entries are inserted just below `below`.
  /// If `above` is non-null, the entries are inserted just above `above`.
  /// Otherwise, the entries are inserted on top.
  ///
  /// It is an error to specify both `above` and `below`.
  void ainsertAllOverlay(Iterable<OverlayEntry> entries,
      {OverlayEntry? below, OverlayEntry? above, bool callback = false}) {
    _checkBuilderIsInMaterialApp();
    if (callback) _checkAndInvokeCallback();
    Overlay.of(_keyScaff.currentContext!)
        .insertAll(entries, below: below, above: above);
  }

  ///Asuka showSnackBar
  ///Asuka [showSnackBar] was implemented with the purpose of supplying the user with a complete [snackbar].
  ///
  ///Example:
  ///
  ///Controller:
  ///
  ///```
  ///void onClickSnackbar() {
  ///    asuka.showSnackBar(
  ///     const SnackBar(
  ///        content: Text('New Snackbar'),
  ///      ),
  ///    );
  /// }
  ///```
  ///
  ///Page:
  ///
  ///```
  ///ElevatedButton(
  ///                  style: ElevatedButton.styleFrom(primary: Colors.red[300]),
  ///                  onPressed: controller.onClickSnackbar,
  ///                  child: const Text('Custom SnackBar'),
  ///                ),
  ///```
  ///
  ///This code generates an **ElevatedButton**, when pressed, it calls **controller.onClickSnackbar**
  ///
  material.ScaffoldFeatureController<material.SnackBar,
          material.SnackBarClosedReason>
      showSnackBar(material.SnackBar snackbar, {bool callback = false}) {
    _checkBuilderIsInMaterialApp();
    if (callback) _checkAndInvokeCallback();
    return ScaffoldMessenger.of(_keyScaff.currentState!.context)
        .showSnackBar(snackbar);
  }

  /// Removes the current [SnackBar] (if any) immediately.
  ///
  /// The removed snack bar does not run its normal exit animation. If there are
  /// any queued snack bars, they begin their entrance animation immediately.
  void removeCurrentSnackBar(
      {material.SnackBarClosedReason reason =
          material.SnackBarClosedReason.remove,
      bool callback = false}) {
    _checkBuilderIsInMaterialApp();
    if (callback) _checkAndInvokeCallback();
    return ScaffoldMessenger.of(_keyScaff.currentState!.context)
        .removeCurrentSnackBar(reason: reason);
  }

  /// Removes the current [SnackBar] by running its normal exit animation.
  ///
  /// The closed completer is called after the animation is complete.
  void hideCurrentSnackBar(
      {material.SnackBarClosedReason reason =
          material.SnackBarClosedReason.remove,
      bool callback = false}) {
    _checkBuilderIsInMaterialApp();
    if (callback) _checkAndInvokeCallback();
    //return _keyScaff.currentState!.hideCurrentSnackBar(reason: reason);
    return ScaffoldMessenger.of(_keyScaff.currentState!.context)
        .hideCurrentSnackBar(reason: reason);
  }

  ///Asuka showBottomSheet
  ///
  ///Asuka [showBottomSheet] was implemented with the purpose of supplying the user with a complete [bottomsheet].
  ///
  ///Example:
  ///
  ///Controller:
  ///
  ///```
  ///asuka.showBottomSheet((context) {
  ///      return Material(
  ///        elevation: 7,
  ///        child: SizedBox(
  ///          height: MediaQuery.of(context).size.height / 2,
  ///          child: ListView(
  ///            children: [
  ///              const ListTile(
  ///                title: Text('1'),
  ///              ),
  ///              const ListTile(
  ///                title: Text('2'),
  ///              ),
  ///              const ListTile(
  ///                title: Text('3'),
  ///              ),
  ///              ListTile(
  ///                title: const Text('Cancel'),
  ///                onTap: () => Navigator.pop(context),
  ///              ),
  ///            ],
  ///         ),
  ///        ),
  ///      );
  ///   });
  ///```
  ///
  ///Page:
  ///
  ///```
  ///ElevatedButton(
  ///                 style: ElevatedButton.styleFrom(primary: Colors.red[300]),
  ///                  onPressed: () {
  ///                    controller.onClickBottomSheet();
  ///                  },
  ///                  child: const Text('Bottom Sheet'),
  ///                ),
  ///```
  ///
  ///This code generates an **ElevatedButton**, when pressed, it calls **controller.onClickBottomSheet()**

  material.PersistentBottomSheetController<T> showBottomSheet<T>(
      Widget Function(BuildContext) builder,
      {Color? backgroundColor,
      double? elevation,
      ShapeBorder? shape,
      Clip? clipBehavior,
      bool callback = false}) {
    _checkBuilderIsInMaterialApp();
    if (callback) _checkAndInvokeCallback();
    return _keyScaff.currentState!.showBottomSheet(
      builder,
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
    );
  }

  ///Asuka showModalBottomSheet
  ///
  ///Asuka showModalBottomSheet was implemented with the purpose of supplying the user with a complete modal bottom sheet.
  ///
  ///Example:
  ///
  ///Controller:
  ///
  ///```
  ///asuka.showModalBottomSheet(
  ///      builder: (context) => Material(
  ///        borderRadius: const BorderRadius.only(
  ///          topLeft: Radius.circular(16),
  ///          topRight: Radius.circular(16),
  ///        ),
  ///        elevation: 7,
  ///        child: SizedBox(
  ///          height: MediaQuery.of(context).size.height / 2,
  ///          child: ListView(
  ///            children: [
  ///              const ListTile(
  ///                title: Text('Modal 1'),
  ///              ),
  ///              const ListTile(
  ///                title: Text('Modal 2'),
  ///              ),
  ///              const ListTile(
  ///                title: Text('Modal 3'),
  ///              ),
  ///              ListTile(
  ///                title: const Text('Cancel'),
  ///                onTap: () => Navigator.pop(context),
  ///              ),
  ///            ],
  ///          ),
  ///        ),
  ///      ),
  ///      backgroundColor: Colors.transparent,
  ///    );
  ///```
  ///
  ///Page:
  ///
  ///```
  ///ElevatedButton(
  ///                  style: ElevatedButton.styleFrom(primary: Colors.red[300]),
  ///                  onPressed: () {
  ///                    controller.onClickModalBottomSheet();
  ///                  },
  ///                  child: const Text('Modal Bottom Sheet'),
  ///               ),
  ///```
  ///
  ///This code generates an **ElevatedButton**, when pressed, it calls **controller.onClickModalBottomSheet();**

  Future<T?> showModalBottomSheet<T>({
    required WidgetBuilder builder,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    Color? barrierColor,
    bool enableDrag = true,
    bool isDismissible = true,
    bool isScrollControlled = false,
    bool useRootNavigator = false,
    RouteSettings? routeSettings,
    AnimationController? transitionAnimationController,
  }) {
    return material.showModalBottomSheet<T>(
      context: _keyScaff.currentState!.context,
      builder: builder,
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      constraints: constraints,
      barrierColor: barrierColor,
      enableDrag: enableDrag,
      isDismissible: isDismissible,
      isScrollControlled: isScrollControlled,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      transitionAnimationController: transitionAnimationController,
    );
  }

  ///Asuka showCupertinoModalPopup
  ///
  ///Asuka showCupertinoModalPopup was implemented with the purpose of supplying the user with a complete cupertino modal popup.
  ///
  ///Example:
  ///
  ///Controller:
  ///
  ///```
  ///asuka.showCupertinoModalPopup(
  ///      builder: (context) => CupertinoActionSheet(
  ///        title: const Text("Cupertino Action Sheet"),
  ///        actions: [
  ///          CupertinoActionSheetAction(
  ///            child: const Text('Action 1'),
  ///            onPressed: () {},
  ///          ),
  ///          CupertinoActionSheetAction(
  ///            child: const Text('Action 2'),
  ///            onPressed: () {},
  ///          ),
  ///        ],
  ///        cancelButton: CupertinoActionSheetAction(
  ///          child: const Text('Cancel'),
  ///          onPressed: () => Navigator.pop(context),
  ///        ),
  ///      ),
  ///    );
  ///```
  ///
  ///Page:
  ///
  ///```
  ///ElevatedButton(
  ///   style: ElevatedButton.styleFrom(primary: Colors.red[300]),
  ///   onPressed: () {
  ///     controller.onClickModalBottomSheet();
  ///   },
  ///   child: const Text('Cupertino Popup'),
  ///),
  ///```
  ///
  ///This code generates an **ElevatedButton**, when pressed, it calls **controller.onClickModalBottomSheet();**

  Future<T?> showCupertinoModalPopup<T>({
    required WidgetBuilder builder,
    ImageFilter? filter,
    Color barrierColor = cupertino.kCupertinoModalBarrierColor,
    bool barrierDismissible = true,
    bool useRootNavigator = true,
    bool semanticsDismissible = false,
    RouteSettings? routeSettings,
  }) {
    return cupertino.showCupertinoModalPopup<T>(
      context: _keyScaff.currentState!.context,
      builder: builder,
      filter: filter,
      barrierColor: barrierColor,
      barrierDismissible: barrierDismissible,
      useRootNavigator: useRootNavigator,
      semanticsDismissible: semanticsDismissible,
      routeSettings: routeSettings,
    );
  }

  /// Asuka showDialog
  ///
  /// Asuka [showDialog] was implemented with the purpose of supplying the user with a [dialog].
  ///
  ///Example:
  ///
  /// Controller:
  ///```
  /// asuka.showDialog(
  ///       builder: (context) => AlertDialog(
  ///         title: const Text('Dialog'),
  ///         content: const Text('This is a custom Dialog '),
  ///         actions: [
  ///           TextButton(
  ///             onPressed: () {
  ///               Navigator.pop(context);
  ///             },
  ///             child: const Text('Cancel'),
  ///           ),
  ///           TextButton(
  ///             onPressed: () {
  ///               Navigator.pop(context);
  ///             },
  ///             child: const Text('Ok'),
  ///           ),
  ///         ],
  ///       ),
  ///     );
  ///```
  ///Page:
  ///
  ///```
  ///ElevatedButton(
  /// style: ElevatedButton.styleFrom(primary: Colors.red[300]),
  /// onPressed: controller.onClickDialog,
  /// child: const Text('Custom Dialog'),
  ///  ),
  ///```
  ///This code generates an **ElevatedButton**, when pressed, it calls **controller.onClickDialog**

  Future<T?> showDialog<T>(
      {required WidgetBuilder builder,
      bool barrierDismissible = true,
      Color? barrierColor,
      bool useSafeArea = true,
      bool useRootNavigator = true,
      RouteSettings? routeSettings,
      bool callback = false}) {
    _checkBuilderIsInMaterialApp();
    if (callback) _checkAndInvokeCallback();
    return _dialogs!.showDialogListener(
      builder: builder,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      useSafeArea: useSafeArea,
      routeSettings: routeSettings,
    );
  }

  /// Asuka showCupertinoDialog
  ///
  /// Asuka [showCupertinoDialog] was implemented with the purpose of supplying the user with a [dialog].
  ///
  ///Example:
  ///
  /// Controller:
  ///```
  /// asuka.showCupertinoDialog(
  ///       builder: (context) => CupertinoAlertDialog(
  ///         title: const Text('Dialog'),
  ///         content: const Text('This is a custom Dialog '),
  ///         actions: [
  ///           CupertinoDialogAction(
  ///             onPressed: () {
  ///               Navigator.pop(context);
  ///             },
  ///             child: const Text('Cancel'),
  ///           ),
  ///           CupertinoDialogAction(
  ///             onPressed: () {
  ///               Navigator.pop(context);
  ///             },
  ///             child: const Text('Ok'),
  ///           ),
  ///         ],
  ///       ),
  ///     );
  ///```
  ///Page:
  ///
  ///```
  ///ElevatedButton(
  /// style: ElevatedButton.styleFrom(primary: Colors.red[300]),
  /// onPressed: controller.onClickDialog,
  /// child: const Text('Cupertino Dialog'),
  ///  ),
  ///```
  ///This code generates an **ElevatedButton**, when pressed, it calls **controller.onClickDialog**

  Future<T?> showCupertinoDialog<T>(
      {required WidgetBuilder builder,
      bool barrierDismissible = true,
      bool useSafeArea = true,
      bool useRootNavigator = true,
      RouteSettings? routeSettings,
      bool callback = false}) {
    _checkBuilderIsInMaterialApp();
    if (callback) _checkAndInvokeCallback();
    return _dialogs!.showCupertinoDialogListener(
      builder: builder,
      barrierDismissible: barrierDismissible,
      useSafeArea: useSafeArea,
      routeSettings: routeSettings,
    );
  }

  /// init Asuka: Add in your MaterialApp
  /// return MaterialApp(
  ///         builder: asuka.builder,
  ///         ...
  ///
  /// Example:
  /// ```
  /// import 'package:asuka/asuka.dart' as asuka;
  ///
  ///  MaterialApp(
  ///      builder: asuka.builder,
  ///      navigatorObservers: [
  ///         asuka.asukaHeroController //if u don`t add this Hero will not work
  ///      ],
  ///  );
  /// ```

  Widget builder(BuildContext context, Widget? child) {
    return Navigator(
      initialRoute: '/',
      observers: [asukaHeroController],
      onGenerateRoute: (_) => material.MaterialPageRoute(
        builder: (context) => _BuildPage(child: child),
      ),
    );
  }

  material.HeroController get asukaHeroController => HeroController(
      createRectTween: (begin, end) =>
          MaterialRectCenterArcTween(begin: begin, end: end));
}

class _BuildPage extends StatefulWidget {
  final Widget? child;
  const _BuildPage({Key? key, this.child}) : super(key: key);
  @override
  __BuildPageState createState() => __BuildPageState();
}

class __BuildPageState extends State<_BuildPage> implements _ListenerInterface {
  @override
  void initState() {
    super.initState();
    _dialogs = this;
  }

  @override
  Widget build(BuildContext context) {
    return material.Scaffold(
      resizeToAvoidBottomInset: false,
      key: _keyScaff,
      body: widget.child,
    );
  }

  @override
  Future<T?> showDialogListener<T>(
      {required WidgetBuilder builder,
      bool barrierDismissible = true,
      material.Color? barrierColor,
      bool useSafeArea = true,
      bool useRootNavigator = true,
      material.RouteSettings? routeSettings}) {
    return material.showDialog(
      context: context,
      builder: builder,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      //useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
    );
  }

  @override
  Future<T?> showCupertinoDialogListener<T>(
      {required WidgetBuilder builder,
      bool barrierDismissible = true,
      bool useSafeArea = true,
      bool useRootNavigator = true,
      cupertino.RouteSettings? routeSettings}) {
    return cupertino.showCupertinoDialog(
      context: context,
      builder: builder,
      useRootNavigator: useRootNavigator,
      barrierDismissible: barrierDismissible,
      routeSettings: routeSettings,
    );
  }
}

abstract class _ListenerInterface {
  Future<T?> showDialogListener<T>({
    required WidgetBuilder builder,
    bool barrierDismissible = true,
    Color? barrierColor,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
  });

  Future<T?> showCupertinoDialogListener<T>({
    required WidgetBuilder builder,
    bool barrierDismissible = true,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
  });
}
