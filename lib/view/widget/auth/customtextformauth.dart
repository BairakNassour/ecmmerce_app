import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText;
  final String labelText;
  final String? Function(String?)? valid;
  final Icon icon;
  final TextEditingController? mycontroller;
  final bool? obscuretext;
  const CustomTextFormAuth({Key? key, required this.hintText, required this.labelText, required this.icon,required this.mycontroller,required
  this.valid, this.obscuretext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycontroller,
      validator: valid,
      obscureText: obscuretext==null? false:true,
      decoration:InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          label: Text(labelText),
          suffixIcon: icon,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          )
      ),

    );
  }
}
