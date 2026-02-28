
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:perplplexity/theme/colors.dart';

class sideBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      color: AppColors.sideNav,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(

          children: [
            Container(margin:EdgeInsets.symmetric(vertical: 15), child: Icon(Icons.auto_awesome_mosaic,color: AppColors.whiteColor,)),
            Container(child: Icon(Icons.add,color: AppColors.iconGrey,),margin: EdgeInsets.symmetric(vertical: 10),),
            Container(child: Icon(Icons.search,color: AppColors.iconGrey),margin: EdgeInsets.symmetric(vertical: 10)),
            Container(child: Icon(Icons.language,color: AppColors.iconGrey),margin: EdgeInsets.symmetric(vertical: 10)),
            Container(child: Icon(Icons.auto_awesome,color: AppColors.iconGrey),margin: EdgeInsets.symmetric(vertical: 10)),
            Container(child: Icon(Icons.cloud,color: AppColors.iconGrey),margin: EdgeInsets.symmetric(vertical: 10)),
            const Spacer(),
            Container(child: Icon(Icons.arrow_forward_ios_outlined,color: AppColors.iconGrey),margin: EdgeInsets.symmetric(vertical: 10)),

          ],

        ),
      ) ,

    );
  }

}