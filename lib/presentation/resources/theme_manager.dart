import 'package:flutter/material.dart';
import 'package:tut_app/presentation/resources/color_manager.dart';
import 'package:tut_app/presentation/resources/font_manager.dart';
import 'package:tut_app/presentation/resources/styles_manager.dart';
import 'package:tut_app/presentation/resources/values_manager.dart';

ThemeData getThemeData() {
  return ThemeData(
    //main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    splashColor: ColorManager.primary, //ripple effect color
    disabledColor: ColorManager.grey1,

    //cardView theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),

    //appBar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        shadowColor: ColorManager.lightGrey,
        elevation: AppSize.s4,
        titleTextStyle: getRegularStyle(
          color: ColorManager.white,
          fontSize: FontSize.s16,
        )),

    //button theme
    buttonTheme: ButtonThemeData(
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,
      disabledColor: ColorManager.grey1,
      shape: const StadiumBorder(),
    ),

    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white, fontSize: FontSize.s17),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        )
      )
    ),

    //text theme 2021, cause i can't mix between 2018 and 2021 themes..
    textTheme: TextTheme(
      displayLarge: getSemiBoldStyle(color: ColorManager.darkGrey, fontSize: FontSize.s16),
      titleMedium: getMediumStyle(color: ColorManager.lightGrey, fontSize: FontSize.s14),
      bodyLarge: getRegularStyle(color: ColorManager.grey1),
      bodyMedium: getLightStyle(color: ColorManager.grey),
    ),

    //input decoration theme (TextFormField TFF)
    inputDecorationTheme: InputDecorationTheme(
      //content padding
      contentPadding: const EdgeInsets.all(PaddingSize.p8),
      //hint style
      hintStyle: getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14),
      //label style
      labelStyle: getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14),
      //error style
      errorStyle: getRegularStyle(color: ColorManager.error,),
      //enabled border style
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.grey,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
            Radius.circular(
                AppSize.s8
            ),
        )
      ),
      //focused border style
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: AppSize.s1_5,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
                AppSize.s8
            ),
          )
      ),
      //error border style
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.error,
            width: AppSize.s1_5,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
                AppSize.s8
            ),
          )
      ),
      //focused error border style
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: AppSize.s1_5,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
                AppSize.s8
            ),
          )
      ),

    )
  );
}
