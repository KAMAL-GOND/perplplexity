
import 'package:flutter/material.dart';
import 'package:perplplexity/theme/colors.dart';
import 'package:perplplexity/widgets/side_logo.dart';

class sideBar extends StatefulWidget{
  const sideBar({super.key});

  @override
  State<sideBar> createState() => _sideBarState();
}

class _sideBarState extends State<sideBar> {
  bool isCollapsed = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      width: isCollapsed ? 70 : 120,
      color: AppColors.sideNav,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: isCollapsed ? CrossAxisAlignment.center : CrossAxisAlignment.start,

          children: [
            AnimatedContainer(duration: Duration(milliseconds: 600),margin:EdgeInsets.symmetric(vertical: 15), child:
                Icon(Icons.auto_awesome_mosaic,color: AppColors.whiteColor,),


            ),
            side_logo(isCollapsed: isCollapsed, icon: Icons.add, text: "Add"),
            side_logo(isCollapsed: isCollapsed, icon: Icons.search, text: "search"),
            side_logo(isCollapsed: isCollapsed, icon: Icons.language, text: "Language"),
            side_logo(isCollapsed: isCollapsed, icon: Icons.auto_awesome, text: "Internet"),
            side_logo(isCollapsed: isCollapsed, icon: Icons.cloud, text: "cloud"),

            // Container(margin: EdgeInsets.symmetric(vertical: 10), child: Icon(Icons.search,color: AppColors.iconGrey)),
            // Container(margin: EdgeInsets.symmetric(vertical: 10), child: Icon(Icons.language,color: AppColors.iconGrey)),
            // Container(margin: EdgeInsets.symmetric(vertical: 10), child: Icon(Icons.auto_awesome,color: AppColors.iconGrey)),
            // Container(margin: EdgeInsets.symmetric(vertical: 10), child: Icon(Icons.cloud,color: AppColors.iconGrey)),
            const Spacer(),
            GestureDetector(onTap:(){
              setState((){
                isCollapsed =!isCollapsed;
              });
            },child: AnimatedContainer(duration: Duration(milliseconds: 600),margin: EdgeInsets.symmetric(vertical: 10), child: side_logo(isCollapsed: isCollapsed, icon: Icons.arrow_forward_ios, text: "close"))),

          ],

        ),
      ) ,

    );
  }
}