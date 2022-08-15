---
sidebar_position: 7
---

# AsukaSnackBar Message

AsukaSnackBar Message  was implemented with the purpose of supplying the user with a complete message snackbar.

## Code Example

```
ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red[300]),
                  onPressed: () {
                    asuka.AsukaSnackbar.message("message").show();
                  },
                  child: const Text('Message'),
                ),
```

This code generates an **ElevatedButton**, when pressed, it calls **asuka.AsukaSnackbar.message("message").show()**

## Example

![message](.\assets\img\message.png)

