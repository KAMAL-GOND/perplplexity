
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:perplplexity/theme/colors.dart';

class searchBarButton extends StatefulWidget{
  final IconData icon;
  final String name;
  const searchBarButton({super.key, required this.icon, required this.name});
  @override
  State<searchBarButton> createState() => _searchBarButtonState();
}

class _searchBarButtonState extends State<searchBarButton> {
  bool isHower = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter:(event){
        setState(() {
          isHower = true;

        });
      } ,
      onExit: (event){
        setState(() {
        isHower = false;
        });
      } ,
      child: Container(

        margin: EdgeInsetsGeometry.all(5),
        decoration: BoxDecoration(
          color: isHower ? AppColors.proButton : Colors.transparent,
          borderRadius: BorderRadius.circular(6)
        ),
        child: Row(
          children: [
            Icon(widget.icon,color: AppColors.iconGrey,size: 18,),
            const SizedBox(width: 3,),
            Text(widget.name,style: TextStyle(color: AppColors.textGrey,fontSize: 15),)
          ]

        ),
      ),
    );
  }
}