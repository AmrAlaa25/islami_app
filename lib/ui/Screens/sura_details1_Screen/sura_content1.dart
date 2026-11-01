import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_FontSize.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_size.dart';

class SuraContent1 extends StatelessWidget {
final String content;
final int index;
 SuraContent1({super.key,required this.content,required this.index});
  @override
  Widget build(BuildContext context) {
   var width=context.width;
   var height=context.height;
    return  Container(
      padding:EdgeInsets.symmetric(vertical: height*0.015,horizontal:width*0.06 ),
      margin:EdgeInsets.symmetric(horizontal:width*0.05, ) ,
     decoration: BoxDecoration(borderRadius:BorderRadius.circular(16),border:Border.all(width:2,color:AppColors.goldColor  ) ),
child:Text('$content [${index+1}]',
  textDirection: TextDirection.rtl,
  style:AppFontSize.bold20gold ,textAlign: TextAlign.center,)  ,

    );
  }
}

