import 'package:flutter/material.dart';
import 'package:perplplexity/widgets/nav_bar.dart';

class HomePage extends StatelessWidget{
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          sideBar(),
          Column(
            children: [
              //search c ontainor
            ],
          )


        ],
      ),
    );

  }

}