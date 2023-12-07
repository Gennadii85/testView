import 'package:flutter/material.dart';

class EntityTextStile extends TextStyle {
  const EntityTextStile({
    required this.entitySize,
    required this.entityWeight,
    required this.entityColor,
  });
  final double entitySize;
  final FontWeight entityWeight;
  final Color entityColor;
}
