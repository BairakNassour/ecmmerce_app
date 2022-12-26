import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alerExitApp(){
    Get.defaultDialog(
    title: "alert",
    middleText: "do you want to exit",
    actions: [
      ElevatedButton(onPressed:(){ exit(0); }, child: Text("yes")),
      ElevatedButton(onPressed:(){ Get.back();}, child: Text("no"))
    ]
  );
  return Future.value(true);
}
