import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

// fontlar ve temalar ayarlanıyor

class AppTheme {
  static final appTheme = ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.white,
      fontFamily: 'DmSans',

      // appbar theme data
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.white,
      ),

      // input decoration theme
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          borderSide: BorderSide(
            color: AppColors.strokeGrey,
            width: 0.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          borderSide: BorderSide(
            color: AppColors.strokeGrey,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          borderSide: BorderSide(
            color: AppColors.strokeGrey,
            width: 2,
          ),
        ),
      ));
}
