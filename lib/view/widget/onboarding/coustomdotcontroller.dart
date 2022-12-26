import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/datasource/static/static.dart';

class CoustemDotController extends GetView<OnBoardingControllerImpl> {
  const CoustemDotController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImpl>(builder: (controller)=>Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(OnBoardingList.length, (index) => AnimatedContainer(
          duration:const Duration(milliseconds: 900),
          margin: EdgeInsets.only(right: 5),
          width: controller.currentpage==index?20:5,
          height: 6,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular((10)),

          ),
        ),
        ),
      ],
    )
    );
  }
}
