# Asuka

Show Snackbars, dialogs, ModalSheets in a single provider. Simple and Clean.

## Instalation

Add in your pubspec.yaml

```yaml
dependencies:
  asuka: any
```

now, add in your MaterialApp:

```dart
import 'package:asuka/asuka.dart' as asuka;

MaterialApp(
    builder: asuka.builder,
    navigatorObservers: [
       asuka.asukaHeroController //if u don`t add this Hero will not work
    ],
);

```

THAT'S IT!

## Using

### Snackbars

```dart
import 'package:asuka/asuka.dart' as asuka;

//use same Scaffold documetation
asuka.showSnackBar(SnackBar(
    content: Text("Hello World"),
));

//some sugar code
AsukaSnackbar.warning("Warning").show();

AsukaSnackbar.success("success").show();

AsukaSnackbar.alert("alert").show();

AsukaSnackbar.info("info").show();

AsukaSnackbar.message("message").show();

```

### Overlay

```dart
import 'package:asuka/asuka.dart' as asuka;

var entry = OverlayEntry(
    builder: (context) {
    return Center(
        child: CircularProgressIndicator(),
    );
  },
);

asuka.addOverlay(entry);

//after
entry.remove();

```

### BottomSheet

```dart
import 'package:asuka/asuka.dart' as asuka;

//use same Scaffold documetation
asuka.showBottomSheet((context) => Container());

```

### Dialogs

```dart
import 'package:asuka/asuka.dart' as asuka;

//use same Material documetation
asuka.showDialog(
    builder: (context) => AlertDialog(),
);

```

## Features and bugs

Please send feature requests and bugs at the [issue](https://github.com/Flutterando/asuka/issues) tracker.
