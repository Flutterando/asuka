---
sidebar_position: 4
---

# AsukaSnackBar Success

AsukaSnackBar Success was implemented with the purpose of supplying the user with a complete success snackbar.

## Code Example

```
ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red[300]),
                  onPressed: () {
                    asuka.AsukaSnackbar.success("Success").show();
                  },
                  child: const Text('Success'),
                ),
```

This code generates an **ElevatedButton**, when pressed, it calls **asuka.AsukaSnackbar.success("Success").show();**

## Example

![success](.\assets\img\success.png)

