import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_FontSize.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_size.dart';

class ContentItem extends StatelessWidget {
final String content;
TextStyle?style;
 double? horizontalPadding;
 ContentItem({super.key,required this.content,this.style,this.horizontalPadding});
  @override
  Widget build(BuildContext context) {
   var width=context.width;
   var height=context.height;
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal:horizontalPadding??width*0.04 ),
      child: Text(content ,
        textDirection: TextDirection.rtl,
        style: style?? AppFontSize.bold20gold ,textAlign: TextAlign.center,),
    );
  }
}

