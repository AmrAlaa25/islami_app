import 'package:flutter/material.dart';
import 'package:islami/core/shared_pref_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MostResentProviders  extends ChangeNotifier {
  List<int>mostResent=[];



void getLastSuraIndex()async{
    final SharedPreferences prefs=await SharedPreferences.getInstance();
    List<String>mostResentListIndexAsString=prefs.getStringList(SharedPrefsKeys.key) ??[];
   mostResent  =mostResentListIndexAsString.map(
          (index) =>int.parse(index) ,
    ).toList();
notifyListeners();
  }





}
