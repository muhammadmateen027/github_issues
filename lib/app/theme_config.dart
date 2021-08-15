import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  colorScheme: ThemeData.light().colorScheme.copyWith(
        background: Colors.white,
        onBackground: Colors.black12,
      ),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  colorScheme: ThemeData.dark().colorScheme.copyWith(
        onBackground: Colors.black12,
      ),
);
