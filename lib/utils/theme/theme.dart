import 'package:e_store/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:e_store/utils/theme/custom_theme/appbar_theme.dart';
import 'package:e_store/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:e_store/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:e_store/utils/theme/custom_theme/chip_theme.dart';
import 'package:e_store/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:e_store/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:e_store/utils/theme/custom_theme/text_field_theme.dart';

class EAppTheme {
  EAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.pink,
      scaffoldBackgroundColor: Colors.white,
      textTheme: ETextTheme.lightTextTheme,
      elevatedButtonTheme: EElevatedButtonTheme.lightElevatedButtonTheme,
      appBarTheme: EAppBarTheme.lightAppBarTheme,
      checkboxTheme: ECheckboxTheme.lightCheckboxTheme,
      bottomSheetTheme: EBottomSheetTheme.lightBottomSheetTheme,
      outlinedButtonTheme: EOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: ETextFieldTheme.lightInputDecorationTheme,
      chipTheme: EChipTheme.lightChipTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.pink,
      scaffoldBackgroundColor: const Color.fromARGB(171, 0, 0, 0),
      textTheme: ETextTheme.darkTextTheme,
      elevatedButtonTheme: EElevatedButtonTheme.darkElevatedButtonTheme,
      appBarTheme: EAppBarTheme.darkAppBarTheme,
      checkboxTheme: ECheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: EBottomSheetTheme.darkBottomSheetTheme,
      outlinedButtonTheme: EOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: ETextFieldTheme.darkInputDecorationTheme,
      chipTheme: EChipTheme.darkChipTheme);
}
