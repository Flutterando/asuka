---
sidebar_position: 5
---

# AsukaSnackBar Alert

AsukaSnackBar Alert was implemented with the purpose of supplying the user with a complete alert snackbar.

## Code Example

```
ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red[300]),
                  onPressed: () {
                    asuka.AsukaSnackbar.alert("Alert").show();
                  },
                  child: const Text('Alert'),
                ),
```

This code generates an **ElevatedButton**, when pressed, it calls **asuka.AsukaSnackbar.alert("Alert").show();**

## Example

![alert](.\assets\img\alert.png)

