import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../routes.dart';

abstract class ResetPasword extends GetxController{
  sucess();
}
class ResetPaswordImpl extends ResetPasword{
  late TextEditingController password1;
  late TextEditingController password2;
  @override
  sucess() {
      Get.toNamed(AppRoute.sucessreset);

  }

  @override
  void onInit() {
    password1= TextEditingController();
    password2= TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    password1.dispose();
    password2.dispose();
    super.dispose();
  }

}