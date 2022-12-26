import 'package:ecommerce_app/controller/useraccount.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class RefreshController extends GetxController{
  refreshing();
}
class RefreshControllerImpl extends RefreshController{
  late List product;

  @override
  void onInit() {
    product=UserAccountList.getproductsList();
    super.onInit();
  }
  @override
  refreshing() {
    product=UserAccountList.getproductsList();
    print(product);
    update();
  }

}