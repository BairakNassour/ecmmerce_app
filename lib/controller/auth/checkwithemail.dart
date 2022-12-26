import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../routes.dart';

abstract class CheckwithEmailController extends GetxController{
  checkemail();
  gotoverfiycode();
}
class CheckWithEmailControllerImpl extends CheckwithEmailController{
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
  gotoverfiycode() {
    Get.offNamed(AppRoute.Verfiy);
  }

}