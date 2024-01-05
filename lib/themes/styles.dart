// import 'dart:ui';
import 'package:flutter/material.dart';

abstract class Styles {
  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF006A64),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFF71F7EC),
    onPrimaryContainer: Color(0xFF00201E),
    secondary: Color(0xFF4A6360),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFCCE8E4),
    onSecondaryContainer: Color(0xFF051F1D),
    tertiary: Color(0xFFB90063),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFFFD9E2),
    onTertiaryContainer: Color(0xFF3E001D),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFAFDFB),
    onBackground: Color(0xFF191C1C),
    surface: Color(0xFFFAFDFB),
    onSurface: Color(0xFF191C1C),
    surfaceVariant: Color(0xFFDAE5E2),
    onSurfaceVariant: Color(0xFF3F4947),
    outline: Color(0xFF6F7977),
    onInverseSurface: Color(0xFFEFF1F0),
    inverseSurface: Color(0xFF2D3130),
    inversePrimary: Color(0xFF50DBD0),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF006A64),
    outlineVariant: Color(0xFFBEC9C6),
    scrim: Color(0xFF000000),
  );
  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF50DBD0),
    onPrimary: Color(0xFF003734),
    primaryContainer: Color(0xFF00504B),
    onPrimaryContainer: Color(0xFF71F7EC),
    secondary: Color(0xFFB0CCC8),
    onSecondary: Color(0xFF1C3532),
    secondaryContainer: Color(0xFF324B49),
    onSecondaryContainer: Color(0xFFCCE8E4),
    tertiary: Color(0xFFFFB1C8),
    onTertiary: Color(0xFF650033),
    tertiaryContainer: Color(0xFF8E004A),
    onTertiaryContainer: Color(0xFFFFD9E2),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF191C1C),
    onBackground: Color(0xFFE0E3E2),
    surface: Color(0xFF191C1C),
    onSurface: Color(0xFFE0E3E2),
    surfaceVariant: Color(0xFF3F4947),
    onSurfaceVariant: Color(0xFFBEC9C6),
    outline: Color(0xFF899391),
    onInverseSurface: Color(0xFF191C1C),
    inverseSurface: Color(0xFFE0E3E2),
    inversePrimary: Color(0xFF006A64),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF50DBD0),
    outlineVariant: Color(0xFF3F4947),
    scrim: Color(0xFF000000),
  );
  static const TextStyle productRowitemname = TextStyle(
      // color: Color.fromRGBO(
      //   0,
      //   0,
      //   0,
      //   0.8,
      // ),
      fontSize: 18,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold);
  static const TextStyle productRowtotal = TextStyle(
      // color: Color.fromRGBO(
      //   0,
      //   0,
      //   0,
      //   0.8,
      // ),
      fontSize: 18,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold);
  static const TextStyle productRowitemprice = TextStyle(
      color: Color(0xFF8E8E93),
      fontSize: 13,
      // fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w300);
  static const TextStyle searchText = TextStyle(
      // color: Color.fromRGBO(
      //   0,
      //   0,
      //   0,
      //   1,
      // ),
      fontSize: 14,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);
  static const TextStyle deliveryTimeLabel = TextStyle(
      color: Color.fromRGBO(
        0,
        0,
        0,
        1,
      ),
      fontSize: 14,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);
}
