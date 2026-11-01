import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_Assets.dart';
import 'package:islami/core/utils/app_FontSize.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_size.dart';
import 'package:islami/ui/Screens/home/tabs/quran/widget/suraList.dart';
import 'package:islami/widget/quran_resources.dart';

class Text_Field extends StatelessWidget {

  void Function(String)? onChanged;
  Text_Field({super.key,required this.onChanged});
  @override
  Widget build(BuildContext context) {

double width=context.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal:width*0.03 ),
      child: TextField(
        onChanged:onChanged,
        cursorColor: AppColors.goldColor,
        style:TextStyle(fontWeight:FontWeight.bold,fontSize: 16,color:AppColors.whiteColor   ),
        decoration:InputDecoration(
          prefixIcon:ImageIcon(AssetImage(AppAssets.searchIcon,),color:AppColors.goldColor ,),
          hintText:'Sura Name' ,
          hintStyle:AppFontSize.bold16White,
          enabledBorder: decorationBorder(),
          focusedBorder: decorationBorder(),

        ) ,


      ),
    )
    ;
  }
  OutlineInputBorder decorationBorder(){
    return OutlineInputBorder(
        borderRadius:BorderRadius.circular(10) ,
        borderSide: BorderSide(color:AppColors.goldColor,width:2,  ));

  }



}
