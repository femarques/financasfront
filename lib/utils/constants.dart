import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color lightGrey = Color.fromRGBO(240, 242, 246, 1);
const Color midGrey = Color.fromRGBO(214, 218, 222, 1);
const Color lightOrange = Color.fromRGBO(255, 75, 75, 1);
const Color darkGrey = Color.fromRGBO(49, 51, 63, 1);
const Color darkRed = Color.fromRGBO(125, 53, 59, 1);

const Radius radius = Radius.circular(8.0);
const double defaultSpace = 15;

class TextStyles {
  static TextStyle title =
      GoogleFonts.sourceSans3(fontSize: 23, fontWeight: FontWeight.w800);

  static TextStyle label =
      GoogleFonts.sourceSans3(fontSize: 14, fontWeight: FontWeight.w400);

  static TextStyle body =
      GoogleFonts.sourceSans3(fontSize: 15, fontWeight: FontWeight.w400);
}

class AppStrings {
  static String welcomeApp = "Bem vindo ao ${Constants.appName}!";
}

ColorScheme appColorScheme = const ColorScheme(
  brightness: Brightness.light,
  primary: lightOrange,
  onPrimary: Colors.white,
  secondary: Colors.white,
  onSecondary: lightOrange,
  error: darkRed,
  onError: Color.fromRGBO(255, 236, 236, 1),
  surface: Colors.white,
  onSurface: darkGrey,
);

InputDecorationTheme appInputDecorationTheme = const InputDecorationTheme(
  floatingLabelBehavior: FloatingLabelBehavior.always,
  filled: true,
  fillColor: lightGrey,
  hoverColor: lightGrey,
  focusColor: lightGrey,
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: lightOrange,
      ),
      borderRadius: BorderRadius.all(radius)),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: lightGrey),
      borderRadius: BorderRadius.all(radius)),
  errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: lightGrey),
      borderRadius: BorderRadius.all(radius)),
  focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: lightOrange),
      borderRadius: BorderRadius.all(radius)),
);

TextTheme appTextTheme =
    Typography.englishLike2021.apply(fontFamily: "SourceSans");

BoxDecoration appContainerDecoration = BoxDecoration(
    border: Border.all(color: midGrey, width: 1),
    borderRadius: const BorderRadius.all(radius));

class Constants {
  static const String appName = "Finanças";
}
