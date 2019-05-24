import 'package:flutter/material.dart';

const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF252525;

const MaterialColor theme = MaterialColor(
  _themePrimaryValue,
  <int, Color>{
    50: Color.fromRGBO(231, 0, 60, 100),
    100: Color.fromRGBO(231, 40, 60, 100),
    200: Color.fromRGBO(231, 80, 60, 100),
    300: Color.fromRGBO(231, 100, 60, 100),
    400: Color.fromRGBO(231, 120, 60, 100),
    500: Color.fromRGBO(231, 140, 60, 100),
    600: Color.fromRGBO(231, 160, 60, 100),
    700: Color.fromRGBO(231, 180, 60, 100),
  },
);
const int _themePrimaryValue = 0xFF252525;

const MaterialColor theme2 = MaterialColor(
  _theme2PrimaryValue,
  <int, Color>{
    50: Color.fromRGBO(60, 20, 80, 100),
    100: Color.fromRGBO(80, 20, 80, 100),
    200: Color.fromRGBO(100, 20, 80, 100),
    300: Color.fromRGBO(120, 20, 80, 100),
    400: Color.fromRGBO(140, 20, 80, 100),
    500: Color.fromRGBO(160, 20, 80, 100),
    600: Color.fromRGBO(180, 20, 80, 100),
    700: Color.fromRGBO(200, 20, 80, 100),
  },
);
const int _theme2PrimaryValue = 0xFF252525;

const Color tBlack = Color.fromRGBO(61, 61, 61, 100);