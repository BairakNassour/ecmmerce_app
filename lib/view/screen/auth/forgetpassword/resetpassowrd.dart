import 'package:ecommerce_app/controller/auth/logincontroller.dart';
import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:ecommerce_app/view/widget/auth/coustemButtonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/resetpasswordcontroller.dart';
import '../../../../controller/routes.dart';
import '../../../../core/constant/imageassets.dart';
import '../../../widget/auth/customtextformauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPaswordImpl controller=Get.put(ResetPaswordImpl());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,

        elevation: 0.0,
        centerTitle: true,
        title: Text("New Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey),),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
        child: ListView(children: [

          SizedBox(height: 20,),

          Text("Set new Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),textAlign: TextAlign.center,),

          SizedBox(height: 20,),

          Text("change youre password now",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 17,color: Colors.black),textAlign: TextAlign.center),

          SizedBox(height: 40,),

          CustomTextFormAuth(
              valid: (val){

              },
              hintText: "Enter New Password",labelText: "password",icon: Icon(Icons.password),mycontroller: controller.password1),

          SizedBox(height: 20,),

          CustomTextFormAuth(
              valid: (val){

              },

              hintText: "retype password",labelText: "password",icon: Icon(Icons.password),mycontroller: controller.password2),

          SizedBox(height: 20,),

          CustomButtonAuth(text: "Done",onPressed: (){
            controller.sucess();
          },),
        ],

        ),
      ),
    );
  }
}
