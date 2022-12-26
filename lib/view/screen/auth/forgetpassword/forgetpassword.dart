
import 'package:ecommerce_app/view/widget/auth/coustemButtonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/forgetpasswordcontroller.dart';
import '../../../widget/auth/customtextformauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImpl controller=Get.put(ForgetPasswordControllerImpl());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,

        elevation: 0.0,
        centerTitle: true,
        title: Text("Forget Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey),),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
        child: ListView(children: [

          SizedBox(height: 20,),

          Text("check email",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),textAlign: TextAlign.center,),

          Image.asset("android/assets/images/onboarding1.PNG",height: 100),

          Text("check now with your email",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 17,color: Colors.black),textAlign: TextAlign.center),

          SizedBox(height: 40,),

          CustomTextFormAuth(
              valid: (val){

              },
              hintText: "Enter your email",labelText: "Email",icon: Icon(Icons.email),mycontroller: controller.email),

          SizedBox(height: 20,),

          CustomButtonAuth(text: "check email",onPressed: (){
            controller.gotoverfiycode();


          },),

          SizedBox(height: 20,),



        ],

        ),
      ),
    );
  }
}
