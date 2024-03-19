import 'package:flutter/material.dart';

class AppColor {
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);

  static const MaterialColor primary = MaterialColor(
    _primaryValue,
    <int, Color>{
      25: Color(0xFFF6FEF9),
      50: Color(0xFFF2F9F4),
      100: Color(0xFFE5F4EA),
      200: Color(0xFFB0DEBF),
      300: Color(0xFF9DD6AF),
      400: Color(0xFF7CC895),
      500: Color(_primaryValue),
      600: Color(0xFF499562),
      700: Color(0xFF377049),
      800: Color(0xFF244A31),
      900: Color(0xFF122518),
    },
  );
  static const int _primaryValue = 0xFF5bba7a;
  // 8D51FF
  // 7EDA58

  static const MaterialColor neutral = MaterialColor(
    _neutral,
    <int, Color>{
      25: Color(_neutral),
      50: Color(_neutral),
      100: Color(0xFFF3F4F6),
      200: Color(0xFFE5E7EB),
      300: Color(0xFFD2D6DB),
      400: Color(0xFF9DA4AE),
      500: Color(_neutral),
      600: Color(0xFFF3F4F6),
      700: Color(0xFFF3F4F6),
      800: Color(0xFFF3F4F6),
      900: Color(0xFFF3F4F6),
    },
  );
  static const int _neutral = 0xFFFFFFFF;

  static const Color bgPageColor = Color(0xFFF5F5F5);

  // Info
  static const MaterialColor info = MaterialColor(
    _info,
    <int, Color>{
      25: Color(0xFFF5FAFF),
      50: Color(0xFFEFF8FF),
      100: Color(0xFFD1E9FF),
      200: Color(0xFFB2DDFF),
      300: Color(0xFF84CAFF),
      400: Color(0xFF53B1FD),
      500: Color(_info),
      600: Color(0xFF1570EF),
      700: Color(0xFF175CD3),
      800: Color(0xFF1849A9),
      900: Color(0xFF194185),
    },
  );
  static const int _info = 0xFF2E90FA;
  // Success
  static const MaterialColor success = MaterialColor(
    _success,
    <int, Color>{
      25: Color(0xFFF6FEF9),
      50: Color(0xFFECFDF3),
      100: Color(0xFFD1FADF),
      200: Color(0xFFA6F4C5),
      300: Color(0xFF6CE9A6),
      400: Color(0xFF32D583),
      500: Color(_success),
      600: Color(0xFF039855),
      700: Color(0xFF027A48),
      800: Color(0xFF05603A),
      900: Color(0xFF054F31),
    },
  );
  static const int _success = 0xFF12B76A;

  // Error
  static const MaterialColor error = MaterialColor(
    _error,
    <int, Color>{
      25: Color(0xFFFFFBFA),
      50: Color(0xFFFEF3F2),
      100: Color(0xFFFEE4E2),
      200: Color(0xFFFECDCA),
      300: Color(0xFFFDA29B),
      400: Color(0xFFF97066),
      500: Color(_error),
      600: Color(0xFFD92D20),
      700: Color(0xFFB42318),
      800: Color(0xFF912018),
      900: Color(0xFF7A271A),
    },
  );
  static const int _error = 0xFFF04438;

  // Error
  static const MaterialColor warning = MaterialColor(
    _warning,
    <int, Color>{
      25: Color(0xFFFFFCF5),
      50: Color(0xFFFFFAEB),
      100: Color(0xFFFEF0C7),
      200: Color(0xFFFEDF89),
      300: Color(0xFFFEC84B),
      400: Color(0xFFFDB022),
      500: Color(_warning),
      600: Color(0xFFDC6803),
      700: Color(0xFFB54708),
      800: Color(0xFFB54708),
      900: Color(0xFF7A2E0E),
    },
  );
  static const int _warning = 0xFFF79009;
}
