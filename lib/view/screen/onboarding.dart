
import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/constant/imageassets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/datasource/static/static.dart';
import '../widget/onboarding/coustmbutton.dart';
import '../widget/onboarding/coustomdotcontroller.dart';
import '../widget/onboarding/slider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImpl());
    return Scaffold(
      body:   Column(
        children: [
          Expanded(
            flex: 3,
            child: SliderOnBoarding()
          ),
          Expanded(
            flex: 1,
              child:
              Column(
           children: [
             CoustemDotController(),
             SizedBox(height: 70,),
             Container(child: onBoardingButton())
           ],
          ))
        ],
      )
    );
  }
}
