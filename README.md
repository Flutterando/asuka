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
import 'package:asuka/asuka.dart';

MaterialApp(
    builder: Asuka.builder,
    navigatorObservers: [
       Asuka.asukaHeroController //if u don`t add this Hero will not work
    ],
);

```

THAT'S IT!

## Using

### Snackbars

```dart
import 'package:asuka/asuka.dart';

//use same Scaffold documetation
Asuka.showSnackBar(SnackBar(
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
import 'package:asuka/asuka.dart';

var entry = OverlayEntry(
    builder: (context) {
    return Center(
        child: CircularProgressIndicator(),
    );
  },
);

Asuka.addOverlay(entry);

//after
entry.remove();

```

### BottomSheet

```dart
import 'package:asuka/asuka.dart';

//use same Scaffold documetation
Asuka.showBottomSheet((context) => Container());

```

### Dialogs

```dart
import 'package:asuka/asuka.dart';

//use same Material documetation
Asuka.showDialog(
    builder: (context) => AlertDialog(),
);

```

## Features and bugs

Please send feature requests and bugs at the [issue](https://github.com/Flutterando/asuka/issues) tracker.
