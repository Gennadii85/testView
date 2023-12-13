import 'package:dashboard/common/variables.dart';
import 'package:flutter/material.dart';

class AppBarTitleName extends StatelessWidget {
  const AppBarTitleName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      Variables.appBarTitleName,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    );
  }
}
