import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FireBase extends StatelessWidget {
  
  final String documentId;

  FireBase(this.documentId);
  getdata() async{
    List userss=[];
      Firebase.initializeApp();
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users.where("phone",isEqualTo: 12345).get().then((value) {
       value.docs.forEach((element) {
        userss.add(element.data());
       });
    });
    return userss;
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MaterialButton(
        color: Colors.red,
        onPressed: () {
        getdata().then((value){
          print(value);
        });
      },));
      
    
    

  }
}