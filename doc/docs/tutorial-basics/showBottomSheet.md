---
sidebar_position: 9
---

# Asuka showBottomSheet

Asuka showBottomSheet was implemented with the purpose of supplying the user with a complete bottom sheet.

## Code Example

## Controller:

```
asuka.showBottomSheet((context) {
      return Material(
        elevation: 7,
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          child: ListView(
            children: [
              const ListTile(
                title: Text('1'),
              ),
              const ListTile(
                title: Text('2'),
              ),
              const ListTile(
                title: Text('3'),
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
```

## Page:

```
ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red[300]),
                  onPressed: () {
                    controller.onClickBottomSheet();
                  },
                  child: const Text('Bottom Sheet'),
                ),
```

This code generates an **ElevatedButton**, when pressed, it calls **controller.onClickBottomSheet()**

## Example

![showSnackBar](.\assets\img\bottomsheet.png)

