import 'package:bmi_calc/config/colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  useMaterial3: true,

  colorScheme:const ColorScheme.light(
    surface: lBgColor,
    onSurface: lFontColor,
    primary: lPrimaryColor,
    primaryContainer: lDivColor,
    onPrimaryContainer: lFontColor,
    onSecondaryContainer: lLableColor,
  )
);


var darkTheme = ThemeData(
  useMaterial3: true,

  colorScheme:const ColorScheme.dark(
    surface: dBgColor,
    onSurface: dFontColor,
    primary: dPrimaryColor,
    primaryContainer: dDivColor,
    onPrimaryContainer: dFontColor,
    onSecondaryContainer: dLableColor,
  )
);