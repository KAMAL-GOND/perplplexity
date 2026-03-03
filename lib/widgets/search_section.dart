import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplplexity/theme/colors.dart';
import 'package:perplplexity/widgets/search_bar_button.dart';

class search_section extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(

        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text("WHERE KNOWLEDGE BEGINS",style: GoogleFonts.ibmPlexMono(
            fontSize: 45,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.5,
            wordSpacing: 1.5

          ),),
          const SizedBox(height: 30,),
          Container(
            width: 800,
            height: 150,
            decoration: BoxDecoration(
              color: AppColors.searchBar,
              border: BoxBorder.all(color: AppColors.searchBarBorder,width: 1,style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Column(

              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Anything ...",
                      hintStyle: TextStyle(
                        color: AppColors.textGrey,
                        fontSize: 20,
                      )
                        ,border: InputBorder.none,

                    ),
                    //expands: true,
                    maxLines: 2,



                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    searchBarButton(
                      icon: Icons.auto_awesome_outlined,
                      name: "FOCUS",
                    ),
                    const SizedBox(width: 10,),
                    searchBarButton(
                      icon: Icons.add_circle_outline,
                      name: "ATTACH",
                    ),
                    const Spacer(),
                    Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsetsGeometry.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: AppColors.submitButton
                      ),
                      child: Icon(Icons.arrow_forward,color: AppColors.background,),
                    )


                  ],
                )
              ],
            ),
          )

        ],
      ),
    );
  }


}