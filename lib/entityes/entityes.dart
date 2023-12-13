import 'package:flutter/material.dart';

class EntityTextStyle extends TextStyle {
  const EntityTextStyle({
    required this.entitySize,
    required this.entityWeight,
    required this.entityColor,
  });
  final double entitySize;
  final FontWeight entityWeight;
  final Color entityColor;
}
