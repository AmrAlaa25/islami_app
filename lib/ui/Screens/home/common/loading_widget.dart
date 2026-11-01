import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';

class LoadingWidget extends StatelessWidget {
  Color ?color;

   LoadingWidget ({super.key,this.color});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
      color:color??AppColors.goldColor,
      ),
    );
  }
}
