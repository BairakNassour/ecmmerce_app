import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';
import '../../../data/datasource/static/static.dart';

class SliderOnBoarding extends GetView<OnBoardingControllerImpl> {
  const SliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
       controller.onPageChanged(val);
      },
        itemCount: OnBoardingList.length,
        itemBuilder: (context,i)=>Column(
          children: [
            Text(OnBoardingList[i].title!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            const SizedBox(height: 70,),
            Image.asset(OnBoardingList[i].image!),
            const SizedBox(height: 70,),
            Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(OnBoardingList[i].body!,textAlign: TextAlign.center,style: TextStyle(height: 2,color: Colors.grey[500],fontSize: 20),)
            )
          ],
        ));
  }
}
