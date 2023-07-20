import 'package:flutter/material.dart';

final warningConfig =
    AsukaConfig(color: Color(0xFFE6CA72), icon: Icons.warning);
final alertConfig = AsukaConfig(color: Color(0xffFA5456), icon: Icons.report);
final infoConfig = AsukaConfig(color: Color(0xff3196DA), icon: Icons.help);
final successConfig =
    AsukaConfig(color: Color(0xFF80AD49), icon: Icons.check_circle);
final messageConfig = AsukaConfig(
  color: Color(0xff484848),
);

class AsukaConfig {
  final Color color;
  final IconData? icon;

  AsukaConfig({required this.color, this.icon});
}
