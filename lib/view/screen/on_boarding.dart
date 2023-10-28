import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/data/datasource/static/static.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: onBoardingList.length,
          itemBuilder: (context,index){
            return Column(
              children: [
                Center(child: Text(onBoardingList[index].title!))
              ],
            );
          }),
      ));
    
  }
}