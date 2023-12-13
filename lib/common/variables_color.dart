import 'package:flutter/material.dart';

class VariablesColor {
  static Color themeColor = const Color(0xffE8F8FF);
  static Color drawerBackColor = const Color(0xffFCFEFF);
  static Color budgeColor = const Color(0xff22BCFF);
  static Color navigationModelColor = const Color(0xffFCFEFF);
  static Color navigationModelBottomString = const Color(0xff738B96);
  static Color jobQuotationDateTimeRow = const Color(0xff6B6B6B);
  static Color jobQuotationContentTitle3Color = const Color(0xff121315);
  static Color jobQuotationContentNameColor = const Color(0xff242A2D);
  static Color jobQuotationContentCityColor = const Color(0xff7B8D95);
  static Color jobQuotationContentButtonTextColor = const Color(0xffFDFEFF);
  static Color jobQuotationContentButton2TextColor = const Color(0xff22BCFF);
  static Decoration pageBackColor = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        VariablesColor.themeColor,
        Colors.white,
        Colors.white,
        Colors.white,
      ],
      stops: const [0.25, 0.25, 0.25, 0.25],
    ),
  );
  static Gradient jobQuotationContentButtonColor = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xff56CCFF), Color(0xff22BCFF)],
    stops: [1, 1],
  );
  static Gradient jobQuotationContentButton2Color = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.white,
      Color.fromARGB(255, 247, 239, 239),
    ], // figma do not match the layout
    stops: [1, 1],
  );
}
