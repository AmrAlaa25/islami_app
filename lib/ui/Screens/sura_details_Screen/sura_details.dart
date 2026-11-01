import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/utils/app_Assets.dart';
import 'package:islami/core/utils/app_FontSize.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_size.dart';
import 'package:islami/providers/most_Resent_Providers.dart';
import 'package:islami/ui/Screens/home/common/content_Item.dart';
import 'package:islami/ui/Screens/home/common/loading_widget.dart';
import 'package:islami/widget/quran_resources.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {

   SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
   String verses='';
late MostResentProviders mostResentProviders;
  Widget build(BuildContext context) {

   mostResentProviders=Provider.of(context);
    var index=ModalRoute.of(context)?.settings.arguments as int;
var width=context.width;
var height=context.height;
loadSuraFile(index);
    return Scaffold(
    backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        title: Text(QuranResources.englishQuranSuraList[index],style: AppFontSize.bold20gold ,),
      ),
body:Column(
  spacing:height*0.02,
  children: [
    Padding(
      padding:  EdgeInsets.symmetric(horizontal:width*0.04 ),
      child: Stack(
        alignment:Alignment.center ,
        children: [
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: [
              Image.asset(AppAssets.leftCorner),
              Image.asset(AppAssets.rightCorner),
            ],
          ),
        Text(QuranResources.arabicQuranSuraList[index],style: AppFontSize.bold24gold ,),


        ],
      ),
    )
,
    Expanded(child:verses.isEmpty?
    LoadingWidget()  : SingleChildScrollView(child: ContentItem(content:verses))   ,),
Image.asset(AppAssets.mosque)
  ],

) ,

    ) ;
  }

 dispose(){
    super.dispose();
mostResentProviders.getLastSuraIndex();


 }


Future<void> loadSuraFile(int index) async {

  String fileContent = await rootBundle.loadString('assets/files/Suras/${index+1}.txt');
    List<String>lines=fileContent.split('\n').map((line)=>line.trim()).where((line)=>line.isNotEmpty).toList();

    for(int i=0;i<lines.length;i++){
lines[i]+=" [${i+1}] ";
    }
  verses=lines.join('');


    Future.delayed(Duration(milliseconds: 500),()=>setState(() {

    })

    );




  }
}
