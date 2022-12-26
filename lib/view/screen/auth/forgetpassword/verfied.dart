
import 'package:ecommerce_app/view/widget/auth/coustemButtonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';


import '../../../../controller/auth/checkwithemail.dart';
import '../../../../controller/auth/forgetpasswordcontroller.dart';
import '../../../../controller/auth/verfiycodecontroller.dart';
import '../../../widget/auth/customtextformauth.dart';

class VerfiedCode extends StatelessWidget {
  const VerfiedCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OtpFieldController otpController = OtpFieldController();
    VerfiyCodeControllerImpl controller=Get.put(VerfiyCodeControllerImpl());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,

        elevation: 0.0,
        centerTitle: true,
        title: Text("verification code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey),),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
        child: ListView(children: [

          SizedBox(height: 20,),

          Text("verfiy now",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),textAlign: TextAlign.center,),

          Image.asset("android/assets/images/onboarding2.PNG",height: 100),

          Text("we send a code to youre email \n enter the ode here",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 17,color: Colors.black),textAlign: TextAlign.center),

          SizedBox(height: 40,),

          OTPTextField(
              controller: otpController,
              length: 5,
              width: MediaQuery.of(context).size.width,
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldWidth: 45,
              fieldStyle: FieldStyle.box,
              outlineBorderRadius: 15,
              style: TextStyle(fontSize: 17),
              onChanged: (pin) {
                print("Changed: " + pin);
              },
              onCompleted: (pin) {
                controller.gotoresetpassword();
              }),



        ],

        ),
      ),
    );
  }
}
