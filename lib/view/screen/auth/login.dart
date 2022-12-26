import 'dart:convert';

import 'package:ecommerce_app/controller/auth/logincontroller.dart';
import 'package:ecommerce_app/core/class/crud.dart';
import 'package:ecommerce_app/core/function/validinput.dart';
import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:ecommerce_app/view/widget/auth/coustemButtonauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

import '../../../controller/routes.dart';
import '../../../core/constant/imageassets.dart';
import '../../../core/function/alertexitapp.dart';
import '../../../core/function/loginalert.dart';
import '../../widget/auth/customtextformauth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Crud crud=new  Crud();
    LoginControllerImpl controller=Get.put(LoginControllerImpl());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,

        elevation: 0.0,
        centerTitle: true,
        title: Text("SignIn",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey),),
      ),
      body: WillPopScope(
       onWillPop: alerExitApp,
          child: Container(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
        child: Form(
          key: controller.formstate ,
          child: ListView(children: [

            SizedBox(height: 20,),

            Text("Welcome Back",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),textAlign: TextAlign.center,),

            Image.asset("android/assets/images/onboarding1.PNG",height: 100),

            Text("sign in now with your email\n facbook or gmail",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 17,color: Colors.black),textAlign: TextAlign.center),

            SizedBox(height: 40,),

            CustomTextFormAuth(
                valid: (val){
                  return validInput(val, 5, 100, "email");

                },
                hintText: "Enter your email",labelText: "Email",icon: Icon(Icons.email),mycontroller: controller.email),

            SizedBox(height: 20,),

            CustomTextFormAuth(
                valid: (val){
                  return validInput(val, 5, 100, "password");

                },
                obscuretext: true,
                hintText: "Enter your password",labelText: "password",icon: Icon(Icons.password),mycontroller: controller.password),

            SizedBox(height: 20,),

            InkWell(child: Text("forget password?",textAlign: TextAlign.end,),onTap: (){Get.toNamed(AppRoute.Forget);},),

            SizedBox(height: 20,),

            CustomButtonAuth(text: "login",onPressed: (){
              crud.getproducts();
              var accept=crud.loginaccess(controller.email.text,controller.password.text);
               print(accept.then((value) {
                
                 if(value==controller.email.text){

                  
                  controller.login();
               }
               else{
                Get.defaultDialog(
                     title: "alert",
                     middleText: "email or password not correct try agin",
                     actions: [
                       ElevatedButton(onPressed:(){ Get.back();}, child: Text("Okay"))
                    ]
                 );
               }
            }));
              //


            },),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("do you have accout?"),
                InkWell(child: Text("Signin  ",style: TextStyle(color: Colors.red),),onTap: (){controller.signup();},)
              ],)

          ],

          ),
        ),
      ))
    );
  }
}
