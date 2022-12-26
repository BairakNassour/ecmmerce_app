import 'package:ecommerce_app/controller/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/localization/changelocale.dart';
import '../widget/laguage.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr,style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 50,),
            CustomButtonLanguage(stringbutton:"ar",onPressed: (){
              controller.chnagelang("ar");
              Get.toNamed(AppRoute.OnBoarding);
            },
            ),
           CustomButtonLanguage(stringbutton:"en",onPressed: () {
             controller.chnagelang("en");
             Get.toNamed(AppRoute.OnBoarding);
           })
    ],
        ),
      ),
    );
  }
}
