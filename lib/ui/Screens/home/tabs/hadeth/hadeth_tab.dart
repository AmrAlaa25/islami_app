import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_size.dart';
import 'package:islami/ui/Screens/home/tabs/hadeth/hadeeth_items.dart';

class HadethTab extends StatelessWidget {
 HadethTab({super.key});
List<int>itemsIndex=List.generate(50, (index) =>  index+1 ,);
  Widget build(BuildContext context) {
    var height=context.height;
    var width=context.width;
    return CarouselSlider(
      options: CarouselOptions(height: height*0.66,enlargeCenterPage:true ),

      items: itemsIndex.map((items) =>HadeethItems(index: items)     ,).toList(),
    );
  }
}
