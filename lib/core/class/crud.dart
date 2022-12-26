
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../controller/useraccount.dart';

class Crud{
  final Future<SharedPreferences> useraccount = SharedPreferences.getInstance();
 
  String link= "http://192.168.1.11/ecommerce";
  Future<Map> postdata(Map data) async{
    var response =await http.post(Uri.parse("http://192.168.1.11/ecommerce/auth/Signup.php"),body:data);
    Map responsebody= jsonDecode(response.body);
    return responsebody;
  }

  Future loginaccess(String email,String password) async{
     List posts=[];
     String value1;

    var response =await http.get(Uri.parse("http://192.168.1.11/ecommerce/test.php?useremail=$email&password=$password"));
    var responsebody= jsonDecode(response.body);
    //print(responsebody);
    posts.addAll(responsebody);
    if(posts.isEmpty){
      //print("exit");
      value1="exit";
    }else{
    //print(posts[0]['user_name']);
    UserAccountList.setuserList(posts);
    value1=posts[0]['user_email'];
    }
  return value1;
  }

  Future getproducts() async{
     List posts=[];
     String value1;

    var response =await http.get(Uri.parse("http://192.168.1.11/ecommerce/products.php"));
    var responsebody= jsonDecode(response.body);
    //print(responsebody);
    posts.addAll(responsebody);
    UserAccountList.setprodutsList(posts);
    
  }

  
  
}


