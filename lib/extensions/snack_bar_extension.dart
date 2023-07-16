import 'package:flutter/material.dart';

import '../enums/asuka_vertical_position.dart';

extension snackBarExtension on SnackBar {
  SnackBar applyVerticalPosition(AsukaVerticalPosition verticalPosition,
      {double? top}) {
    return SnackBar(
      width: this.width,
      elevation: this.elevation,
      backgroundColor: this.backgroundColor,
      action: this.action,
      shape: this.shape,
      margin: verticalPosition == AsukaVerticalPosition.bottom
          ? null
          : EdgeInsets.only(
              bottom: top ?? 0,
            ),
      behavior: this.behavior,
      content: this.content,
    );
  }
}
