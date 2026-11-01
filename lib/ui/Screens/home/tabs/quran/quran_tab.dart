import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:islami/core/shared_pref_utils.dart';
import 'package:islami/core/utils/appRoutes.dart';
import 'package:islami/core/utils/app_FontSize.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_size.dart';
import 'package:islami/ui/Screens/home/tabs/quran/widget/buildSearchByTextField.dart';
import 'package:islami/ui/Screens/home/tabs/quran/widget/most_recently.dart';
import 'package:islami/ui/Screens/home/tabs/quran/widget/suraList.dart';
import 'package:islami/widget/quran_resources.dart';


class QuranTab extends StatefulWidget {
   QuranTab({super.key});
  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<int>filterList=List.generate(114, (index) => index,);

  @override
  Widget build(BuildContext context) {
    String searchText;

    var width=context.width;
    var height=context.height;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:width*0.04),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start ,
          crossAxisAlignment:CrossAxisAlignment.start ,
          spacing:height*0.01,
        children: [
          Text_Field(onChanged:(text) {
           searchBySuraName(text);
             }),

          MostRecently(),
         Text('Suras List',style:AppFontSize.bold16White ,),
          _BuildSuraList(),
        ],
        ),
      ),
    );
  }

Widget _BuildSuraList(){
return  filterList.isEmpty?  Center(child: Text('Sura Name Is Not Found!',style:AppFontSize.bold24gold ,)) :
ListView.separated(
  physics:NeverScrollableScrollPhysics() ,
    shrinkWrap: true,
    itemBuilder:(context,index){
      return InkWell(

       onTap: () {
         saveLastSuraIndex(filterList[index]);
         Navigator.of(context).pushNamed(AppRoutes.SuraDetailsRoute,arguments:filterList[index] );},
          child: Suralist(index:filterList[index])) ;},
    separatorBuilder:(context,index){
      return Divider(
        height: context.height*0.02,
        thickness: 2,
        indent:context.width*0.095,
        color:AppColors.whiteColor ,
        endIndent: context.width*0.095,
      );},
    itemCount:filterList.length);


}

void searchBySuraName(String suraName){
 List<int>searchList=[];
 for(int i=0;i<QuranResources.englishQuranSuraList.length;i++){
  if(
  QuranResources.englishQuranSuraList[i].toLowerCase().contains(suraName.toLowerCase())||
  QuranResources.arabicQuranSuraList[i].toLowerCase().contains(suraName.toLowerCase())
  ){
   searchList.add(i);
  }
  filterList=searchList;
  setState(() {

  });

 }

print(suraName);
  }
}



