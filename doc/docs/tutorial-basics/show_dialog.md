---
sidebar_position: 8
---

# Asuka showDialog

Asuka showDialog was implemented with the purpose of supplying the user with a dialog.

## Code Example

## Controller:

```
asuka.showDialog(
      builder: (context) => AlertDialog(
        title: const Text('Dialog'),
        content: const Text('This is a custom Dialog '),
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
```

## Page:

```
ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red[300]),
                  onPressed: controller.onClickDialog,
                  child: const Text('Custom Dialog'),
                ),
```

This code generates an **ElevatedButton**, when pressed, it calls **controller.onClickDialog**

## Example

![dialog](.\assets\img\dialog.png)

