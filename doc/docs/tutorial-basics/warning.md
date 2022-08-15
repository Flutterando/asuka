---
sidebar_position: 3
---

# AsukaSnackBar Warning

AsukaSnackBar Warning was implemented with the purpose of supplying the user with a complete warning snackbar.

## Code Example

```
ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red[300]),
                  onPressed: () {
                    asuka.AsukaSnackbar.warning("Warning").show();
                  },
                  child: const Text('Warning'),
                ),
```

This code generates an **ElevatedButton**, when pressed, it calls **asuka.AsukaSnackbar.warning("Warning").show()**

## Example

![warning](.\assets\img\warning.png)

