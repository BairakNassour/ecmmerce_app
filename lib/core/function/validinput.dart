import 'package:get/get.dart';

validInput(val , min , max , type){
  if(type=="username") {
    if (GetUtils.isUsername(val)) {
      return "not valid username";
    }
  }
    else if(type=="email"){
      if(GetUtils.isEmail(val)){
        return "not valid email";
      }
  }
    else if(type=="phone") {
    if (GetUtils.isPhoneNumber(val)) {
      return "not valid phone number";
    }
  }
    else{

    }
    if(val.length<min){
      return"value is short";
    }
  if(val.length>max){
    return"value is too long";
  }
    }
