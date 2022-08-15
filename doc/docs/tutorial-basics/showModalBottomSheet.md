---
sidebar_position: 10
---

# Asuka showModalBottomSheet

Asuka showModalBottomSheet was implemented with the purpose of supplying the user with a complete modal bottom sheet.

## Code Example

## Controller:

```
asuka.showModalBottomSheet(
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
                title: Text('Modal 1'),
              ),
              const ListTile(
                title: Text('Modal 2'),
              ),
              const ListTile(
                title: Text('Modal 3'),
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
```

## Page:

```
ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red[300]),
                  onPressed: () {
                    controller.onClickModalBottomSheet();
                  },
                  child: const Text('Modal Bottom Sheet'),
                ),
```

This code generates an **ElevatedButton**, when pressed, it calls **controller.onClickModalBottomSheet();**

## Example

![showSnackBar](.\assets\img\modal.png)

