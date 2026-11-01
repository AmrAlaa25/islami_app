import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_FontSize.dart';
import 'package:islami/core/utils/app_colors.dart';

class AppTheme {

static final ThemeData darkTheme= ThemeData(

appBarTheme:AppBarTheme(
 backgroundColor:AppColors.blackColor ,
centerTitle:true,
iconTheme:IconThemeData(
  color: AppColors.goldColor
) ,
) ,

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
backgroundColor: AppColors.goldColor,
    selectedItemColor:AppColors.whiteColor ,
    unselectedItemColor:AppColors.blackColor ,
    selectedLabelStyle:AppFontSize.bold12White ,

  )
)  ;



}