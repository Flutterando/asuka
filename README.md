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
