import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../routes.dart';

abstract class VerfiyCodeController extends GetxController{
  gotoresetpassword();
}
class VerfiyCodeControllerImpl extends VerfiyCodeController{
  late String verfiycode;

  @override
  void onInit() {
    super.onInit();
  }
  @override
  gotoresetpassword() {
    Get.offNamed(AppRoute.reset);
  }

}