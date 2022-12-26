import 'package:ecommerce_app/controller/routes.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/constant/routes.dart';

abstract class OnBoardingController extends GetxController{
    next();
    onPageChanged(int index);
}
class OnBoardingControllerImpl extends OnBoardingController{
  @override
  late PageController pageController;
  int currentpage=0;
  next() {
    currentpage=currentpage+1;
    if(currentpage>OnBoardingList.length - 1){
      Get.offAllNamed(AppRoute.login);
    }else {
      pageController.animateToPage(
          currentpage, duration: Duration(milliseconds: 900),
          curve: Curves.easeInOut);
    }
    update();
  }

  @override
  onPageChanged(int index) {
    currentpage=index;
    update();
  }
  @override
  void onInit() {
    pageController=PageController();
    super.onInit();
  }

}
