import 'package:flutter/material.dart';

import '../enums/asuka_type_enum.dart';
import '../src/asuka_singleton.dart';

class AsukaContentWidget extends StatelessWidget {
  final IconData? icon;
  final String content;
  final AsukaType type;
  final List<Widget>? actions;
  const AsukaContentWidget({
    super.key,
    this.icon,
    required this.content,
    required this.type,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null) ...[
          Icon(
            icon,
            size: 20,
            color: Colors.black45,
          ),
          SizedBox(width: 10)
        ],
        Expanded(
          child: Text(
            content,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
        if ((actions?.isEmpty ?? false))
          InkWell(
            child: Icon(Icons.close, color: Colors.white),
            onTap: (type == AsukaType.snackbar)
                ? Asuka.hideCurrentSnackBar
                : Asuka.hideCurrentMaterialBanner, //
          )
      ],
    );
  }
}
