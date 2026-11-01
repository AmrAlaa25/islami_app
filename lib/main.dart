import 'package:flutter/material.dart';
import 'package:islami/core/utils/appRoutes.dart';
import 'package:islami/core/utils/app_Theme.dart';
import 'package:islami/providers/most_Resent_Providers.dart';
import 'package:islami/ui/Screens/home/home_screen.dart';
import 'package:islami/ui/Screens/introduction_Screen.dart';
import 'package:islami/ui/Screens/sura_details1_Screen/sura_details1.dart';
import 'package:islami/ui/Screens/sura_details_Screen/sura_details.dart';
import 'package:islami/ui/Screens/sura_details1_Screen/sura_details1.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( ChangeNotifierProvider(create:(context)=>MostResentProviders(),
  child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute:AppRoutes.introRoute,
routes:{
  AppRoutes.introRoute:(context)=>IntroScreen(),
 AppRoutes.homeRoute:(context)=>HomeScreen(),
 AppRoutes.SuraDetailsRoute:(context)=>SuraDetails(),
AppRoutes.SuraDetails1Route:(context)=>SuraDetails1(),

} ,

  darkTheme:AppTheme.darkTheme ,
    themeMode:ThemeMode.dark ,

  ) ;


  }






}