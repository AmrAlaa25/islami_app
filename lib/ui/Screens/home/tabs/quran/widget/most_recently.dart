import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/core/shared_pref_utils.dart';
import 'package:islami/core/utils/appRoutes.dart';
import 'package:islami/core/utils/app_Assets.dart';
import 'package:islami/core/utils/app_FontSize.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_size.dart';
import 'package:islami/providers/most_Resent_Providers.dart';
import 'package:islami/widget/quran_resources.dart';
import 'package:provider/provider.dart';

class MostRecently extends StatefulWidget {
 MostRecently({super.key});
  @override
  State<MostRecently> createState() => _MostRecentlyState();
}

class _MostRecentlyState extends State<MostRecently> {
  late MostResentProviders mostResentProviders;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
WidgetsBinding.instance.addPostFrameCallback((_) {
  mostResentProviders.getLastSuraIndex();

},);

}


  @override
  Widget build(BuildContext context) {
var width=context.width;
var height=context.height;
var mostResentProvider=Provider.of<MostResentProviders>(context);
    return  Visibility(
      visible:mostResentProvider.mostResent.isNotEmpty ,
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start ,

        spacing:height*0.01,
        children: [
          Text('Most Recently',style:AppFontSize.bold16White ,),
          SizedBox(
            height:height* 0.18,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(AppRoutes.SuraDetailsRoute,arguments:mostResentProvider.mostResent[index] );

                    },
                    child: Container(
                      padding:EdgeInsets.symmetric(horizontal: width*0.04) ,
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color:AppColors.goldColor),
                      child:Row(
                        children: [
                          Column(
                            mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                            crossAxisAlignment:CrossAxisAlignment.start ,
                            children: [
                              Text(QuranResources.englishQuranSuraList[mostResentProvider.mostResent[index]],style:AppFontSize.bold24black ,),
                              Text(QuranResources.arabicQuranSuraList[mostResentProvider.mostResent[index]],style:AppFontSize.bold24black ,),
                              Text('${QuranResources.ayaNumber[mostResentProvider.mostResent[index]]} Verses  ',style:AppFontSize.bold14black ,),

                            ],
                          ),
                          Image.asset(AppAssets.recentlyImage),


                        ],

                      ) ,

                    ),
                  )   ;

                }, separatorBuilder:(context,index){
              return SizedBox(width:width*0.03,)  ;

            },
                itemCount:mostResentProvider.mostResent.length

            ),
          )

        ],

      ),
    )
    ;
  }
}
