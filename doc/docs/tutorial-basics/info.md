---
sidebar_position: 6
---

# AsukaSnackBar Info

AsukaSnackBar Info was implemented with the purpose of supplying the user with a complete information snackbar.

## Code Example

```
ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red[300]),
                  onPressed: () {
                    asuka.AsukaSnackbar.info("info").show();
                  },
                  child: const Text('Info'),
                ),
```

This code generates an **ElevatedButton**, when pressed, it calls **asuka.AsukaSnackbar.info("info").show()**

## Example

![info](.\assets\img\info.png)

