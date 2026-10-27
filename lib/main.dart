import 'package:flutter/material.dart';
import 'package:islami/core/utils/appRoutes.dart';
import 'package:islami/ui/Screens/home/home_screen.dart';
import 'package:islami/ui/Screens/introduction_Screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    initialRoute:AppRoutes.introRoute,
routes:{
  AppRoutes.introRoute:(context)=>IntroScreen(),
 AppRoutes.homeRoute:(context)=>HomeScreen(),


} ,


  ) ;
  }






}