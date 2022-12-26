import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../routes.dart';

abstract class VerfiyCodeSignUpController extends GetxController{
  gotosuccesssignup();
}
class VerfiyCodeSignUpControllerImpl extends VerfiyCodeSignUpController{
  late String verfiycode;

  @override
  void onInit() {
    super.onInit();
  }
  @override
  gotosuccesssignup() {
    Get.offNamed(AppRoute.sucesssignup);
  }

}