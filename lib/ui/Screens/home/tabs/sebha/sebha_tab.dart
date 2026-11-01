import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_Assets.dart';
import 'package:islami/core/utils/app_FontSize.dart';
import 'package:islami/core/utils/app_size.dart';
import 'package:islami/ui/Screens/home/tabs/sebha/sebha_details.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  @override
  int counter=0;
  int index=0;
  int beads=33;
  Widget build(BuildContext context) {
var height=context.height;
var width=context.width;
    return Column(
      children: [
        Text('سَبِّحِ اسْمَ رَبِّكَ الأعلى',style:AppFontSize.bold36White),
        Align(
            alignment: Alignment.center,
            child: Image.asset(AppAssets.sebhaHead,)),

        GestureDetector(
      onTap:() {
    onTap();

      } ,
      child: SizedBox(

        // height:height*0.49 ,
        // width:width*0.88 ,
        child: Stack(
clipBehavior:Clip.none ,
        alignment:Alignment.center ,
        children: [



          AnimatedRotation(turns: counter/-beads, duration: Duration(milliseconds:300),
            child:Image.asset(AppAssets.sebhaBody,fit:BoxFit.contain ,width:width*0.88 ,height:height*0.41 ,) ,
          ),



          Column(
            mainAxisSize: MainAxisSize.min,
            children:[
              Text(SebhaDetails.azkar[index],style:AppFontSize.bold36White ,),
              Text('$counter',style:AppFontSize.bold36White ),


            ],


          )



        ],
            ),
      )
      ,

    )
      ],

    );
  }
void onTap(){

    counter++;
    setState(() {
      if(counter>33){
        counter=0;
        index++;
        if(index==SebhaDetails.azkar.length-1){
          index=0;
        }
      }

    });




}



}
