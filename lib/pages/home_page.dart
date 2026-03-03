import 'package:flutter/material.dart';
import 'package:perplplexity/widgets/nav_bar.dart';
import 'package:perplplexity/widgets/search_section.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          sideBar(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
             // verticalDirection: VerticalDirection.down,

              children: [
                search_section()
                //search c ontainor
              ],
            ),
          )


        ],
      ),
    );

  }

}