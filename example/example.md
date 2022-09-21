## How to use

Add the following code when calling your Material App:

```dart
import 'package:asuka/asuka.dart';

MaterialApp(
    builder: Asuka.builder,
    navigatorObservers: [
       Asuka.asukaHeroController //This line is needed for the Hero widget to work
    ],
);
```

## Exemples

### Asuka Snackbars

* AsukaSnackbar.alert

```dart
import 'package:asuka/asuka.dart';

ElevatedButton(
onPressed: () {
  asuka.AsukaSnackbar.alert("Alert").show();
},
child: const Text("Show alert"),
)
```

* AsukaSnackbar.info

```dart
import 'package:asuka/asuka.dart';

ElevatedButton(
onPressed: () {
  asuka.AsukaSnackbar.info("Info").show();
},
child: const Text("Show Info"),
)
```

* AsukaSnackbar.message

```dart
import 'package:asuka/asuka.dart';

ElevatedButton(
onPressed: () {
  asuka.AsukaSnackbar.message("Message").show();
},
child: const Text("Show message"),
)
```

* AsukaSnackbar.success

```dart
import 'package:asuka/asuka.dart';

ElevatedButton(
onPressed: () {
  asuka.AsukaSnackbar.success("Success").show();
},
child: const Text("Show success"),
)
```

* AsukaSnackbar.warning 

```dart
import 'package:asuka/asuka.dart';

ElevatedButton(
onPressed: () {
  asuka.AsukaSnackbar.warning("Warning").show();
},
child: const Text("Show warning"),
)
```

### Asuka Examples

* Asuka.builder

```dart
import 'package:asuka/asuka.dart';

Widget builder(BuildContext context, Widget? child) {
  return Asuka.builder(context, child);
}
```

* Asuka.showDialog

```dart
import 'package:asuka/asuka.dart';

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
```

* Asuka.showBottomSheet

```dart
import 'package:asuka/asuka.dart';

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
```

* Asuka.showModalBottomSheet

```dart
import 'package:asuka/asuka.dart';

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
```

