import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/auth/coustemButtonauth.dart';

class SucsessSignUp extends StatelessWidget {
  const SucsessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 80,vertical: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Sucess"),
            Icon(Icons.check_circle_outline,color: Colors.red,size: 200,),
            CustomButtonAuth(text: "Signup",onPressed: (){
              //controller.signup();

            },),

          ],
        ),
      ),
    );
  }
}
