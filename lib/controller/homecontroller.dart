import 'package:ecommerce_app/controller/routes.dart';
import 'package:ecommerce_app/view/screen/Profile.dart';
import 'package:ecommerce_app/view/screen/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/screen/products.dart';
import '../../view/screen/home.dart';

abstract class HomeController extends GetxController{
    goto(int index);
}
class HomeControllerImpl extends HomeController{
  List<String> widget = [
      AppRoute.laptop,
      AppRoute.mobile,
      AppRoute.watch,
      AppRoute.laptop
    ];
  @override
  goto(int index) {
    Get.toNamed(widget[index]);
  }
  }
  
