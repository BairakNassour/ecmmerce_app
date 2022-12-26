import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> Loginalert(){
    Get.defaultDialog(
    title: "alert",
    middleText: "email or password not correct try agin",
    actions: [
      ElevatedButton(onPressed:(){ Get.back();}, child: Text("Okay"))
    ]
  );
  return Future.value(true);
}
