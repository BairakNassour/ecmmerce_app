import 'package:ecommerce_app/core/class/crud.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../controller/useraccount.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    String name=UserAccountList.getuserList()[0]['user_name'];
   
    /*Crud crud=new Crud();
    Future<List<dynamic>> posts;
    var responsebody=crud.getdata({
              "user_email":"bairak@bairak",});
              posts.addAll(responsebody);*/
    return Scaffold(
      
      
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.purple),
                    height: 50,
                    width: 50,
                    alignment: Alignment.center,
                    //color: Colors.black,
                    child: Text(name.substring(0,1).toUpperCase(),
                            style: TextStyle(color: Colors.white,fontSize: 20),
                            //textAlign: TextAlign.center,
                    ),
                    ),


                  Text('Information',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black)),
                ],
              ), 
              SizedBox(height: 30),
              

              Container(
                color: Colors.grey[200],
                child: ListTile(
                  
                            
                            title: Text('Name:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black)), 
                            subtitle: Text(UserAccountList.getuserList()[0]['user_name'],
                            style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.red),),
                        ),
              ),
               SizedBox(height: 3,), 
               Divider(color: Colors.black,thickness: 2),
               SizedBox(height: 3,),
               Container(

                color: Colors.grey[200],
                child: ListTile(
                  //contentPadding: EdgeInsets.symmetric(vertical: -30),
                  
                            
                            title:Text('E-MAIL:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black)), 
                            subtitle: Text(UserAccountList.getuserList()[0]['user_email'],style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.red)),
                        ),
              ),
              SizedBox(height: 3,),
             Divider(color: Colors.black,thickness: 2),
              SizedBox(height: 3,),

               Container(
                color: Colors.grey[200],
                child: ListTile(
                  
                            
                            title: Text('Phone:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black)),
                            subtitle:  Text(UserAccountList.getuserList()[0]['user_phone'],style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.red)),
                        ),
              ),
              SizedBox(height: 3,),
              Divider(color: Colors.black,thickness: 2),
              SizedBox(height: 3,),

               Container(
                color: Colors.grey[200],
                child: ListTile(
                  
                            
                            title: Text('This Account Created At:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black)),
                            subtitle: Text(UserAccountList.getuserList()[0]['user_create'],style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.red)),
                        ),
              ),


             
             
              
              
              
              
              
             
              
              
             
            ],
          ),
        ),
        
        )
        
        
      );
  }
}