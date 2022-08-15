---
sidebar_position: 7
---

# Asuka showSnackBar

Asuka showSnackBar was implemented with the purpose of supplying the user with a complete snackbar.

## Code Example

## Controller:

```
void onClickSnackbar() {
    asuka.showSnackBar(
      const SnackBar(
        content: Text('New Snackbar'),
      ),
    );
  }
```

## Page:

```
ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red[300]),
                  onPressed: controller.onClickSnackbar,
                  child: const Text('Custom SnackBar'),
                ),
```

This code generates an **ElevatedButton**, when pressed, it calls **controller.onClickSnackbar**

## Example

![showSnackBar](.\assets\img\snackbar.png)

