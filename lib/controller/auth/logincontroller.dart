import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../routes.dart';

abstract class LoginController extends GetxController{
  login();
  signup();
}
class LoginControllerImpl extends LoginController{
  GlobalKey <FormState> formstate=GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  @override
  login() {
    var formdata= formstate.currentState;
    if(formdata!.validate()){
      Get.toNamed(AppRoute.screenhome);
    }
    else{
      print("not vlaid");
    }
  }

  @override
  signup() {
   Get.toNamed(AppRoute.SignUp);
  }

  @override
  void onInit() {
    email= TextEditingController();
    password= TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

}