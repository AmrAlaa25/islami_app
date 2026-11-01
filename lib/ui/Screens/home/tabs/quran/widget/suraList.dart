import 'package:flutter/material.dart';
import 'package:islami/core/utils/appRoutes.dart';
import 'package:islami/core/utils/app_Assets.dart';
import 'package:islami/core/utils/app_FontSize.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_size.dart';
import 'package:islami/widget/quran_resources.dart';

class Suralist extends StatelessWidget {

int index;
Suralist({super.key,required this.index});
Widget build(BuildContext context) {
  var width=context.width;
  var height=context.height;
  return
    Row(
  spacing: width*0.04,
  children: [
  Stack(
  alignment: Alignment.center,

  children: [
  Image.asset(AppAssets.vector),
  Text('${index+1}',style: AppFontSize.bold16White ,)
  ],
  ),
  Column(
  spacing: height*0.01,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [

  Text(QuranResources.englishQuranSuraList[index],style:AppFontSize.bold20White ,),
  Text('${QuranResources.ayaNumber[index]} Verses',style:AppFontSize.bold14White ,)

  ],

  ),
  Spacer(),
  Text(QuranResources.arabicQuranSuraList[index],style:AppFontSize.bold20White ,),


  ],
  );
}



}

/*
*
*
*              Expanded(
              child: ListView.separated(
                  itemBuilder:(context,index){
                    return InkWell(child: Suralist(index: index,)) ;},
                  separatorBuilder:(context,index){
                    return Divider(
                      height: height*0.02,
                      thickness: 2,
                      indent: width*0.095,
                      color:AppColors.whiteColor ,
                      endIndent: width*0.095,
                    );},
                  itemCount:QuranResources.arabicQuranSuraList.length ),
            )

* */


