import 'package:flutter/material.dart';

import '../../../widget/auth/coustemButtonauth.dart';

class SucessResetPassword extends StatelessWidget {
  const SucessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 80,vertical: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Sucess password reset"),
            Icon(Icons.check_circle_outline,color: Colors.red,size: 200,),
            CustomButtonAuth(text: "go to login",onPressed: (){
              //controller.signup();

            },),

          ],
        ),
      ),
    );
  }
}
