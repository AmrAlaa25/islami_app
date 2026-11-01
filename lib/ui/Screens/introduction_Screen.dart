import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/core/utils/appRoutes.dart';
import 'package:islami/core/utils/app_Assets.dart';
import 'package:islami/core/utils/app_size.dart';

import '../../core/utils/app_colors.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width=AppSize.getHeight(context);
    double height=AppSize.getHeight(context);

    return IntroductionScreen(
isProgress: true,
      // controlsPadding: EdgeInsets.zero,
    globalBackgroundColor:AppColors.blackColor ,
      safeAreaList: [true,true,true,true],
      pages: [
        PageViewModel(
          titleWidget: SizedBox.shrink(),
          bodyWidget:SizedBox(
            height:height*0.75,
            width: width,
            child: Column(
            children: [
               Image.asset(AppAssets.logo,height:height*0.16 ,width:width,fit:BoxFit.contain ,),
    SizedBox(height:height*0.05 ,),
              Image.asset(AppAssets.welcome,height:height*0.38 ,width:width*0.86,fit:BoxFit.contain ,),
                  SizedBox(height:height*0.11 ,),
                    Text('Welcome To Islmi App',style:TextStyle(
                     fontSize:24   ,
                     fontWeight: FontWeight.bold ,
            color: AppColors.goldColor     ,
                    ) ,)
            ],
            ),
          ) ,

          decoration:  PageDecoration(

              bodyFlex: 1,
            pageColor:AppColors.blackColor,
titleTextStyle: TextStyle(
 color:AppColors.goldColor,fontWeight:FontWeight.bold,fontSize:24
),

            bodyAlignment:Alignment.center ,
            contentMargin:EdgeInsets.zero ,
            bodyPadding:EdgeInsets.zero ,
            titlePadding: EdgeInsets.zero,
            // safeArea:0
          ),
        ) ,
        PageViewModel(
          titleWidget: SizedBox.shrink(),
          bodyWidget:SizedBox(
            height:height*0.77,
            width: width,
            child: Column(
            children: [
               Image.asset(AppAssets.logo,height:height*0.18 ,width:width,fit:BoxFit.contain ,),
    SizedBox(height:height*0.04 ,),
              Expanded(child: Image.asset(AppAssets.kabba,width:width*0.86,fit:BoxFit.contain ,)),
              SizedBox(height:height*0.04 ,),

                    Text('Welcome To Islmi ',style:TextStyle(
                     fontSize:24   ,
                     fontWeight: FontWeight.bold ,
            color: AppColors.goldColor     ,
                    ) ,) ,
              SizedBox(height:height*0.05,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text('We Are Very Excited To Have You In Our Community',textAlign:TextAlign.center ,style:TextStyle(

                  fontSize:20   ,
                       fontWeight: FontWeight.bold ,
                            color: AppColors.goldColor     ,
                      ) ,),
              )
            ],
            ),
          ) ,

          decoration:  PageDecoration(

              bodyFlex: 1,
            pageColor:AppColors.blackColor,
titleTextStyle: TextStyle(
 color:AppColors.goldColor,fontWeight:FontWeight.bold,fontSize:24
),

            bodyAlignment:Alignment.center ,
            contentMargin:EdgeInsets.zero ,
            bodyPadding:EdgeInsets.zero ,
            titlePadding: EdgeInsets.zero,
            // safeArea:0
          ),
        ),
        PageViewModel(
          titleWidget: SizedBox.shrink(),
          bodyWidget:SizedBox(
            height:height*0.77,
            width: width,
            child: Column(
              children: [
                Image.asset(AppAssets.logo,height:height*0.18 ,width:width,fit:BoxFit.contain ,),
                SizedBox(height:height*0.04 ,),
                Expanded(child: Image.asset(AppAssets.sura,width:width*0.86,fit:BoxFit.contain ,)),
                SizedBox(height:height*0.04 ,),

                Text('Reading the Quran ',style:TextStyle(
                  fontSize:24   ,
                  fontWeight: FontWeight.bold ,
                  color: AppColors.goldColor     ,
                ) ,) ,
                SizedBox(height:height*0.05,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text('Read, and your Lord is the Most Generous',textAlign:TextAlign.center ,style:TextStyle(

                    fontSize:20   ,
                    fontWeight: FontWeight.bold ,
                    color: AppColors.goldColor     ,
                  ) ,),
                )
              ],
            ),
          ) ,

          decoration:  PageDecoration(

            bodyFlex: 1,
            pageColor:AppColors.blackColor,
            titleTextStyle: TextStyle(
                color:AppColors.goldColor,fontWeight:FontWeight.bold,fontSize:24
            ),

            bodyAlignment:Alignment.center ,
            contentMargin:EdgeInsets.zero ,
            bodyPadding:EdgeInsets.zero ,
            titlePadding: EdgeInsets.zero,
            // safeArea:0
          ),
        ),
        PageViewModel(
          titleWidget: SizedBox.shrink(),
          bodyWidget:SizedBox(
            height:height*0.77,
            width: width,
            child: Column(
              children: [
                Image.asset(AppAssets.logo,height:height*0.18 ,width:width,fit:BoxFit.contain ,),
                SizedBox(height:height*0.04 ,),
                Expanded(child: Image.asset(AppAssets.bearish,width:width*0.86,fit:BoxFit.contain ,)),
                SizedBox(height:height*0.03 ,),

                Text('Bearish',style:TextStyle(
                  fontSize:24   ,
                  fontWeight: FontWeight.bold ,
                  color: AppColors.goldColor     ,
                ) ,) ,
                SizedBox(height:height*0.05,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text('Praise the name of your Lord, the Most Highs',textAlign:TextAlign.center ,style:TextStyle(

                    fontSize:20   ,
                    fontWeight: FontWeight.bold ,
                    color: AppColors.goldColor     ,
                  ) ,),
                )
              ],
            ),
          ) ,

          decoration:  PageDecoration(

            bodyFlex: 1,
            pageColor:AppColors.blackColor,
            titleTextStyle: TextStyle(
                color:AppColors.goldColor,fontWeight:FontWeight.bold,fontSize:24
            ),

            bodyAlignment:Alignment.center ,
            contentMargin:EdgeInsets.zero ,
            bodyPadding:EdgeInsets.zero ,
            titlePadding: EdgeInsets.zero,
            // safeArea:0
          ),
        ),
        PageViewModel(
          titleWidget: SizedBox.shrink(),
          bodyWidget:SizedBox(
            height:height*0.77,
            width: width,
            child: Column(
              children: [
                Image.asset(AppAssets.logo,height:height*0.18 ,width:width,fit:BoxFit.contain ,),
                SizedBox(height:height*0.04 ,),
                Expanded(child: Image.asset(AppAssets.Radio,width:width*0.86,fit:BoxFit.contain ,)),
                SizedBox(height:height*0.03 ,),

                Text('Holy Quran Radio',style:TextStyle(
                  fontSize:24   ,
                  fontWeight: FontWeight.bold ,
                  color: AppColors.goldColor     ,
                ) ,) ,
                SizedBox(height:height*0.05,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text('You can listen to the Holy Quran Radio through the application for free and easily',textAlign:TextAlign.center ,style:TextStyle(
                    fontSize:20   ,
                    fontWeight: FontWeight.bold ,
                    color: AppColors.goldColor     ,
                  ) ,),
                )
              ],
            ),
          ) ,

          decoration:  PageDecoration(

            bodyFlex: 1,
            pageColor:AppColors.blackColor,
            titleTextStyle: TextStyle(
                color:AppColors.goldColor,fontWeight:FontWeight.bold,fontSize:24
            ),

            bodyAlignment:Alignment.center ,
            contentMargin:EdgeInsets.zero ,
            bodyPadding:EdgeInsets.zero ,
            titlePadding: EdgeInsets.zero,
            // safeArea:0
          ),
        )

      ],

    showBackButton:true ,
      back: Text("Back", style: TextStyle(color:AppColors.goldColor ,fontWeight: FontWeight.bold,fontSize:16 )),
      next: Text("Next", style: TextStyle(color:AppColors.goldColor ,fontWeight: FontWeight.bold,fontSize: 16)),
      done:  Text("Finish", style: TextStyle(color:AppColors.goldColor ,fontWeight: FontWeight.bold,fontSize: 16)),
      onDone: () {
       Navigator.of(context).pushReplacementNamed(AppRoutes.homeRoute);
      },
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: AppColors.goldColor,
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0)
        ),
      ),
    ) ;
  }
}
