import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../controller/onboarding_controller.dart';

class onBoardingButton extends GetView<OnBoardingControllerImpl> {
  const onBoardingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child:Text("continue"),
      color: Colors.blue,
      textColor: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 100),
      onPressed: (){
        controller.next();
      },
    );
  }
}
