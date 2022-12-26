import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../routes.dart';

abstract class SignUpController extends GetxController{
  signup();
  login();
}
class SignUpControlleriImpl extends SignUpController{
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phone;
  @override
  signup(){
  Get.offNamed(AppRoute.checkemail);
  }


  @override
  void onInit() {
    email= TextEditingController();
    password= TextEditingController();
    username= TextEditingController();
    phone= TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    super.dispose();
  }
  @override
  login() {
    Get.offNamed(AppRoute.login);
  }

}