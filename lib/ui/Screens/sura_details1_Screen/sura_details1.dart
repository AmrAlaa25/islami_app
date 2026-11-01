import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/utils/app_Assets.dart';
import 'package:islami/core/utils/app_FontSize.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_size.dart';
import 'package:islami/providers/most_Resent_Providers.dart';
import 'package:islami/ui/Screens/home/common/loading_widget.dart';
import 'package:islami/ui/Screens/sura_details1_Screen/sura_content1.dart';
import 'package:islami/widget/quran_resources.dart';
import 'package:provider/provider.dart';

class SuraDetails1 extends StatefulWidget {
 SuraDetails1({super.key});

  @override
  State<SuraDetails1> createState() => _SuraDetails1State();
}

class _SuraDetails1State extends State<SuraDetails1> {
  List<String>verses=[];
  late MostResentProviders mostResentProviders;

  Widget build(BuildContext context) {
    mostResentProviders=Provider.of(context);

    var index=ModalRoute.of(context)?.settings.arguments as int;
  if(verses.isEmpty){
    loadSuraFile(index);

  }
    var width=context.width;
var height=context.height;

    return Scaffold(
    backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        title: Text(QuranResources.englishQuranSuraList[index],style: AppFontSize.bold20gold ,),
      ),
body: Container(
  decoration: BoxDecoration(image:DecorationImage( image:AssetImage(AppAssets.background))  ),
padding:EdgeInsets.only(
  top:height*0.02,
  bottom:height*0.12 ,
) ,
  child:Column(
    spacing: height*0.04,
  children: [
    Text(QuranResources.arabicQuranSuraList[index],style: AppFontSize.bold24gold ,),
    Expanded(child:verses.isEmpty? LoadingWidget() :  ListView.separated(itemBuilder: (context, index) {
      return    SuraContent1(content: verses[index],index:index ,) ;
    }
        , separatorBuilder:(context, index) {
          return SizedBox(height: height*0.02,);
        }
        , itemCount:verses.length

    )   ,)
  ],

) ,
)  ,

    );
  }
  dispose(){
    super.dispose();
    mostResentProviders.getLastSuraIndex();


  }

  Future<void> loadSuraFile(int index) async {

String fileContent=  await rootBundle.loadString('assets/files/Suras/${index+1}.txt');

List<String> lines = fileContent.split('\n').map((line)=>line.trim()).where((line)=>line.isNotEmpty).toList();

  verses=lines;
  Future.delayed(Duration(milliseconds:  500),(){
    setState(() {
    });

  });




  }
}/*
*/