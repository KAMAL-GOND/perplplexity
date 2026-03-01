import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';

class side_logo extends StatelessWidget{
  final bool isCollapsed;
  final IconData icon;
  final String text;
  const side_logo({super.key, required this.isCollapsed, required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: isCollapsed ? CrossAxisAlignment.center : CrossAxisAlignment.start,

      children: [
        Container(margin: EdgeInsets.symmetric(vertical: 10),child: Icon(icon,color: AppColors.iconGrey,),),

        Container(margin: EdgeInsets.symmetric(vertical: 11,horizontal: 5),child: isCollapsed ? const SizedBox() : Text(text)),

      ],
    );

  }
}