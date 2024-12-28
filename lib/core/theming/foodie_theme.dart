import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

final ThemeData foodieTheme = ThemeData(
  colorScheme: const ColorScheme.light(),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
  ),
  textTheme: GoogleFonts.robotoTextTheme(),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStateProperty.resolveWith<OutlinedBorder>((_) {
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              12.0), // Change this to your desired border radius
        );
      }),
      overlayColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.pressed)) {
            return Colors.blue
                .withOpacity(0.1); // Change this to your desired color
          }
          return Colors.transparent; // Default color
        },
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(color: Colors.black),
    border: UnderlineInputBorder(
      borderSide: BorderSide(color: ColorsStyles.kPrimaryColor),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: ColorsStyles.kPrimaryColor,
        width: 1.8,
      ),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
    suffixIconColor: Colors.grey,
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Colors.black,
    selectionColor: Colors.blue.withOpacity(0.3),
    selectionHandleColor: Colors.black,
  ),
);
