import 'package:ecommerce_app/view/screen/Profile.dart';
import 'package:ecommerce_app/view/screen/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/screen/products.dart';
import '../../view/screen/home.dart';
import '../useraccount.dart';

abstract class ScreenHomeController extends GetxController{
    chngepage(int currentpage);
}
class ScreenHomeControllerImpl extends ScreenHomeController{
  @override
  chngepage(int currentpage) {
    this.currentpage=currentpage;
    update();
    print(currentpage);
  }
   

  
    int currentpage=3;
    List <Widget> listpage = [
      const Home(),
      const Setting(),
      const Profile(),
      const Products(),
    ];
  }
  
