import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/utils/app_Assets.dart';
import 'package:islami/core/utils/app_FontSize.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_size.dart';
import 'package:islami/ui/Screens/home/common/content_Item.dart';
import 'package:islami/ui/Screens/home/common/loading_widget.dart';
import 'package:islami/widget/hadeeth.dart';

class HadeethItems extends StatefulWidget {
  int index;

   HadeethItems({super.key,required this.index});

  @override
  State<HadeethItems> createState() => _HadeethItemsState();
}

class _HadeethItemsState extends State<HadeethItems> {
  Hadeeth? hadeth;

  @override
@override
  void initState() {
    // TODO: implement initState
    super.initState();
  loadHadeethContent();
  }

  Widget build(BuildContext context) {
    var height=context.height;
    var width=context.width;
    return   Container(
      decoration:BoxDecoration(borderRadius:BorderRadius.circular(20),     color:AppColors.goldColor ,image:DecorationImage(image: AssetImage(AppAssets.hadethCardBackGround)) ) ,
     child: hadeth==null?
         LoadingWidget(color:AppColors.lightBlackColor ,)
         :
     Column(
       children: [
       Stack(
         alignment: Alignment.center,
         children: [
           Padding(
             padding:  EdgeInsets.symmetric(horizontal:width*0.02,vertical:height*0.01 ),
             child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Image.asset(AppAssets.leftCornerHadeth),
               Image.asset(AppAssets.rightCornerHadeth),
             ],

             ),
           ),
ContentItem(content: hadeth!.title,style:AppFontSize.bold24black ,)
         ],
       )
           ,Expanded(
             child: SingleChildScrollView(
              child:ContentItem(content: hadeth!.content??'',style:AppFontSize.bold14black ,)
             ,
             ),
           ),
         Image.asset(AppAssets.Hadeth_Mosque)

                ],


     )  ,

    );
  }

void loadHadeethContent() async{

 String hadeethFileContent=await rootBundle.loadString('assets/files/Hadeeth/h${widget.index}.txt');
int newLineIndex=hadeethFileContent.indexOf('\n');
String title=hadeethFileContent.substring(0,newLineIndex);
String content=hadeethFileContent.substring(newLineIndex);
hadeth=Hadeeth(title: title, content: content);
Future.delayed(Duration(milliseconds: 500),() => setState(() {
}),);
  }
}
