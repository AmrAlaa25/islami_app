import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_Assets.dart';
import 'package:islami/core/utils/app_FontSize.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/ui/Screens/home/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/ui/Screens/home/tabs/quran/quran_tab.dart';
import 'package:islami/ui/Screens/home/tabs/radio/radio_tab.dart';
import 'package:islami/ui/Screens/home/tabs/sebha/sebha_tab.dart';
import 'package:islami/ui/Screens/home/tabs/time/time_tab.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int selectedIndex=0;
List<Widget>Tablist=[
 QuranTab(),HadethTab(),SebhaTab(),RadioTab(),TimeTab()
];
List<String>backGroundList=[
AppAssets.quranBG,
AppAssets.hadethBG,
AppAssets.sebhaBG,
AppAssets.radioBG,
AppAssets.timeBG,
];

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
   backgroundColor:Colors.transparent ,
     body:Stack(
       children:[
         Image.asset(backGroundList[selectedIndex],
         width:double.infinity,
         height:double.infinity,
           fit:BoxFit.fill ,
         ),
         Column(

         children: [
           Image.asset(AppAssets.logo),
           Expanded(child: Tablist[selectedIndex]),
         ],
                ),
     ]) ,

  bottomNavigationBar:Theme(
   data:Theme.of(context).copyWith(
     canvasColor:AppColors.goldColor,
   )    ,
   child: BottomNavigationBar(
     backgroundColor:AppColors.goldColor ,
       selectedItemColor:AppColors.whiteColor ,
       unselectedItemColor:AppColors.blackColor ,
       selectedLabelStyle:AppFontSize.bold12White ,
       currentIndex:selectedIndex ,
       onTap:(index){
         selectedIndex=index;
         setState(() {

         });
       } ,
       items:[
         builtBottomNavigationBarItem(icon:AppAssets.quranIcon, label:'Quran', index:0,),
         builtBottomNavigationBarItem(icon:AppAssets.hadethIcon, label:'Hadeth', index:1),
         builtBottomNavigationBarItem(icon:AppAssets.sebhaIcon, label:'Sebha', index:2,),
         builtBottomNavigationBarItem(icon:AppAssets.radioIcon, label:'Radio', index:3,),
         builtBottomNavigationBarItem(icon:AppAssets.timeIcon, label:'Time', index:4,),

    ]
    ),
  ) ,



    ) ;
  }

BottomNavigationBarItem builtBottomNavigationBarItem({required String icon,required String label,required int index }){

    return BottomNavigationBarItem(icon: selectedIndex==index?
    Container(
        decoration:BoxDecoration(borderRadius:BorderRadius.circular(66),color:AppColors.lightBlackColor  ) ,
        padding:EdgeInsets.symmetric(horizontal:20,vertical: 6 ),
        child: ImageIcon(AssetImage(icon) )):ImageIcon(AssetImage(icon) ),
      label: label,
    );



}
}
