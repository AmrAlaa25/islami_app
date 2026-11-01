import 'package:flutter/cupertino.dart';

class AppSize {
static double getWidth(BuildContext  context)=>
MediaQuery.of(context).size.width;
static double getHeight(BuildContext  context)=>
MediaQuery.of(context).size.height;

}
extension sizeUtils on BuildContext{
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;


}