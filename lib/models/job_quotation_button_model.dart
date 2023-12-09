import 'package:dashboard/common/variables.dart';
import 'package:flutter/material.dart';

class JobQuotationButtonModel extends StatelessWidget {
  const JobQuotationButtonModel({
    Key? key,
    required this.textColor,
    this.gradientColor,
    required this.text,
  }) : super(key: key);
  final Color? textColor;
  final Gradient? gradientColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 40,
      decoration: BoxDecoration(
        gradient: gradientColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          side: BorderSide(color: Variables.budgeColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
