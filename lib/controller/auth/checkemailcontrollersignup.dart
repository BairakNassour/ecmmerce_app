import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../routes.dart';

abstract class CheckEmailController extends GetxController{
  checkemail();
  gotosucesssignup();
}
class CheckEmailControllerImpl extends CheckEmailController{
  late TextEditingController email;
  @override
  checkemail() {

  }

  @override
  void onInit() {
    email= TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
  @override
  gotosucesssignup() {
    Get.offNamed(AppRoute.verfiysignup);
  }


}