import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart';

final _keyScaff = GlobalKey<material.ScaffoldState>();
_ListenerInterface _dialogs;

void _checkBuilderIsInMaterialApp() {
  assert(
      _keyScaff.currentState != null, """Add asuka.builder in your MaterialApp;

       return MaterialApp(
         builder: asuka.builder,
         ...
  """);
}

/// Insert the given entry into the overlay.
///
/// If `below` is non-null, the entry is inserted just below `below`.
/// If `above` is non-null, the entry is inserted just above `above`.
/// Otherwise, the entry is inserted on top.
///
/// It is an error to specify both `above` and `below`.
void addOverlay(OverlayEntry entry, {OverlayEntry below, OverlayEntry above}) {
  _checkBuilderIsInMaterialApp();
  Overlay.of(_keyScaff.currentContext)
      .insert(entry, below: below, above: above);
}

/// Insert all the entries in the given iterable.
///
/// If `below` is non-null, the entries are inserted just below `below`.
/// If `above` is non-null, the entries are inserted just above `above`.
/// Otherwise, the entries are inserted on top.
///
/// It is an error to specify both `above` and `below`.
void ainsertAllOverlay(Iterable<OverlayEntry> entries,
    {OverlayEntry below, OverlayEntry above}) {
  _checkBuilderIsInMaterialApp();
  Overlay.of(_keyScaff.currentContext)
      .insertAll(entries, below: below, above: above);
}

/// Shows a [SnackBar] at the bottom of the scaffold.
///
/// A scaffold can show at most one snack bar at a time. If this function is
/// called while another snack bar is already visible, the given snack bar
/// will be added to a queue and displayed after the earlier snack bars have
/// closed.
///
/// To control how long a [SnackBar] remains visible, use [SnackBar.duration].
///
/// To remove the [SnackBar] with an exit animation, use [hideCurrentSnackBar]
/// or call [ScaffoldFeatureController.close] on the returned
/// [ScaffoldFeatureController]. To remove a [SnackBar] suddenly (without an
/// animation), use [removeCurrentSnackBar].
///
/// See [Scaffold.of] for information about how to obtain the [ScaffoldState].
material.ScaffoldFeatureController<material.SnackBar,
    material.SnackBarClosedReason> showSnackBar(material.SnackBar snackbar) {
  _checkBuilderIsInMaterialApp();
  return _keyScaff.currentState.showSnackBar(snackbar);
}

/// Removes the current [SnackBar] (if any) immediately.
///
/// The removed snack bar does not run its normal exit animation. If there are
/// any queued snack bars, they begin their entrance animation immediately.
void removeCurrentSnackBar(
    {material.SnackBarClosedReason reason =
        material.SnackBarClosedReason.remove}) {
  _checkBuilderIsInMaterialApp();
  return _keyScaff.currentState.removeCurrentSnackBar(reason: reason);
}

/// Removes the current [SnackBar] by running its normal exit animation.
///
/// The closed completer is called after the animation is complete.
void hideCurrentSnackBar(
    {material.SnackBarClosedReason reason =
        material.SnackBarClosedReason.remove}) {
  _checkBuilderIsInMaterialApp();
  return _keyScaff.currentState.hideCurrentSnackBar(reason: reason);
}

/// Shows a material design bottom sheet in the nearest [Scaffold]. To show
/// a persistent bottom sheet, use the [Scaffold.bottomSheet].
///
/// Returns a controller that can be used to close and otherwise manipulate the
/// bottom sheet.
///
/// To rebuild the bottom sheet (e.g. if it is stateful), call
/// [PersistentBottomSheetController.setState] on the controller returned by
/// this method.
///
/// The new bottom sheet becomes a [LocalHistoryEntry] for the enclosing
/// [ModalRoute] and a back button is added to the app bar of the [Scaffold]
/// that closes the bottom sheet.
///
/// To create a persistent bottom sheet that is not a [LocalHistoryEntry] and
/// does not add a back button to the enclosing Scaffold's app bar, use the
/// [Scaffold.bottomSheet] constructor parameter.
///
/// A persistent bottom sheet shows information that supplements the primary
/// content of the app. A persistent bottom sheet remains visible even when
/// the user interacts with other parts of the app.
///
/// A closely related widget is a modal bottom sheet, which is an alternative
/// to a menu or a dialog and prevents the user from interacting with the rest
/// of the app. Modal bottom sheets can be created and displayed with the
/// [showModalBottomSheet] function.
material.PersistentBottomSheetController<T> showBottomSheet<T>(
    Widget Function(BuildContext) builder,
    {Color backgroundColor,
    double elevation,
    ShapeBorder shape,
    Clip clipBehavior}) {
  _checkBuilderIsInMaterialApp();
  return _keyScaff.currentState.showBottomSheet(
    builder,
    backgroundColor: backgroundColor,
    elevation: elevation,
    shape: shape,
    clipBehavior: clipBehavior,
  );
}

/// Displays a Material dialog above the current contents of the app, with
/// Material entrance and exit animations, modal barrier color, and modal
/// barrier behavior (dialog is dismissible with a tap on the barrier).
///
/// This function takes a `builder` which typically builds a [Dialog] widget.
/// Content below the dialog is dimmed with a [ModalBarrier]. The widget
/// returned by the `builder` does not share a context with the location that
/// `showDialog` is originally called from. Use a [StatefulBuilder] or a
/// custom [StatefulWidget] if the dialog needs to update dynamically.
///
/// The `child` argument is deprecated, and should be replaced with `builder`.
///
/// The `context` argument is used to look up the [Navigator] and [Theme] for
/// the dialog. It is only used when the method is called. Its corresponding
/// widget can be safely removed from the tree before the dialog is closed.
///
/// The `barrierDismissible` argument is used to indicate whether tapping on the
/// barrier will dismiss the dialog. It is `true` by default and can not be `null`.
///
/// The `barrierColor` argument is used to specify the color of the modal
/// barrier that darkens everything the dialog. If `null` the default color
/// `Colors.black54` is used.
///
/// The `useSafeArea` argument is used to indicate if the dialog should only
/// display in 'safe' areas of the screen not used by the operating system
/// (see [SafeArea] for more details). It is `true` by default which will mean
/// the dialog will not overlap operating system areas. If it is set to `false`
/// the dialog will only be constrained by the screen size. It can not be 'null`.
//
/// The `useRootNavigator` argument is used to determine whether to push the
/// dialog to the [Navigator] furthest from or nearest to the given `context`.
/// By default, `useRootNavigator` is `true` and the dialog route created by
/// this method is pushed to the root navigator. It can not be `null`.
///
/// The `routeSettings` argument is passed to [showGeneralDialog],
/// see [RouteSettings] for details.
///
/// If the application has multiple [Navigator] objects, it may be necessary to
/// call `Navigator.of(context, rootNavigator: true).pop(result)` to close the
/// dialog rather than just `Navigator.pop(context, result)`.
///
/// Returns a [Future] that resolves to the value (if any) that was passed to
/// [Navigator.pop] when the dialog was closed.
///
/// See also:
///
///  * [AlertDialog], for dialogs that have a row of buttons below a body.
///  * [SimpleDialog], which handles the scrolling of the contents and does
///    not show buttons below its body.
///  * [Dialog], on which [SimpleDialog] and [AlertDialog] are based.
///  * [showCupertinoDialog], which displays an iOS-style dialog.
///  * [showGeneralDialog], which allows for customization of the dialog popup.
///  * <https://material.io/design/components/dialogs.html>
Future<T> showDialog<T>(
    {WidgetBuilder builder,
    bool barrierDismissible = true,
    Color barrierColor,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings routeSettings}) {
  _checkBuilderIsInMaterialApp();
  return _dialogs.showDialogListener(
    builder: builder,
    barrierDismissible: barrierDismissible,
    barrierColor: barrierColor,
    useSafeArea: useSafeArea,
    routeSettings: routeSettings,
  );
}

/// init Asuka: Add in your MaterialApp
/// return MaterialApp(
///         builder: asuka.builder,
///         ...

Widget builder(BuildContext context, Widget child) {
  return Navigator(
    initialRoute: '/',
    onGenerateRoute: (_) => material.MaterialPageRoute(
      builder: (context) => _BuildPage(
        child: child,
      ),
    ),
  );
}

class _BuildPage extends StatefulWidget {
  final Widget child;
  const _BuildPage({Key key, this.child}) : super(key: key);
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
  Future<T> showDialogListener<T>(
      {builder,
      bool barrierDismissible = true,
      material.Color barrierColor,
      bool useSafeArea = true,
      bool useRootNavigator = true,
      material.RouteSettings routeSettings}) {
    return material.showDialog(
      context: context,
      builder: builder,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
    );
  }
}

abstract class _ListenerInterface {
  Future<T> showDialogListener<T>({
    WidgetBuilder builder,
    bool barrierDismissible = true,
    Color barrierColor,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings routeSettings,
  });
}
