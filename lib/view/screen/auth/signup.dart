import 'package:ecommerce_app/controller/auth/signupcontroller.dart';
import 'package:ecommerce_app/core/class/crud.dart';
import 'package:ecommerce_app/view/widget/auth/coustemButtonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/imageassets.dart';
import '../../widget/auth/customtextformauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Crud crud=new Crud();
    SignUpControlleriImpl controller= Get.put(SignUpControlleriImpl());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,

        elevation: 0.0,
        centerTitle: true,
        title: Text("SignUp",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey),),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
        child: Form(
          child: ListView(children: [
        
            SizedBox(height: 15,),
        
            Text("Welcome Back",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),textAlign: TextAlign.center,),
        
            Text("sign in now with your email\n facbook or gmail",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 17,color: Colors.black),textAlign: TextAlign.center),
        
            SizedBox(height: 30,),
        
            CustomTextFormAuth(
                valid: (val){
        
                },
                hintText: "Enter your email",labelText: "Email",icon: Icon(Icons.email),mycontroller: controller.email),
        
            SizedBox(height: 15,),
        
            CustomTextFormAuth(
                valid: (val){
        
                },
                hintText: "Enter your password",labelText: "password",icon: Icon(Icons.password_outlined),mycontroller: controller.password),
        
            SizedBox(height: 20,),
        
            CustomTextFormAuth(
              valid: (val){
        
              },
        
                hintText: "Eneter your name",labelText: "username",icon: Icon(Icons.drive_file_rename_outline),mycontroller: controller.username),
        
            SizedBox(height: 20,),
        
            CustomTextFormAuth(
                valid: (val){
        
                },
                hintText: "Enter your phone",labelText: "phone",icon: Icon(Icons.phone),mycontroller: controller.phone),
        
            SizedBox(height: 20,),
        
        
            SizedBox(height: 20,),
        
            CustomButtonAuth(text: "Signup",onPressed: (){
              
              
             crud.postdata({
              "username":controller.username.text,
              "email":controller.email.text,
              "password":controller.password.text,
              "phone":controller.phone.text});
              controller.signup();

            },),
            
        
            SizedBox(height: 20,),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("if you have an account go to"),
               // InkWell(child: Text("login  ",style: TextStyle(color: Colors.red),),onTap: (){controller.login();},)
              ],)
        
          ],
        
          ),
        ),
      ),
    );
  }
}
