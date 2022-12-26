

import 'package:ecommerce_app/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/checkwithemail.dart';
import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/verfied.dart';
import 'package:ecommerce_app/view/screen/home.dart';
import 'package:ecommerce_app/view/screen/homescreen.dart';
import 'package:ecommerce_app/view/screen/laptop.dart';
import 'package:ecommerce_app/view/screen/mobile.dart';
import 'package:ecommerce_app/view/screen/watch.dart';
import 'package:flutter/material.dart';

import '../../controller/routes.dart';
import '../../view/screen/auth/checkemailsignup.dart';
import '../../view/screen/auth/forgetpassword/resetpassowrd.dart';
import '../../view/screen/auth/forgetpassword/sucessresetpassword.dart';
import '../../view/screen/auth/sucsesssignup.dart';
import '../../view/screen/auth/verfiycodesignup.dart';
import '../../view/screen/onboarding.dart';

Map <String, Widget Function(BuildContext)> routes = {
   AppRoute.login : (context)=>const Login(),
   AppRoute.OnBoarding : (context)=>const OnBoarding(),
   AppRoute.SignUp : (context)=>const SignUp(),
   AppRoute.Forget : (context)=>const ForgetPassword(),
   AppRoute.Verfiy : (context)=>const VerfiedCode(),
   AppRoute.check : (context)=>const CheckWithEmail(),
   AppRoute.reset : (context)=>const ResetPassword(),
   AppRoute.sucessreset : (context)=>const SucessResetPassword(),
   AppRoute.sucesssignup : (context)=>const SucsessSignUp(),
   AppRoute.checkemail : (context)=>const CheckEmail(),
   AppRoute.verfiysignup : (context)=>const VerfiedCodeSignUp(),
   AppRoute.home : (context)=>const Home(),
   AppRoute.screenhome : (context)=>const ScreenHome(),

   AppRoute.laptop : (context)=>const LapTop(),
   AppRoute.mobile : (context)=>const Mobile(),
   AppRoute.watch : (context)=>const Watch(),

};