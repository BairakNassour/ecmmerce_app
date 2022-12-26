import 'package:flutter/material.dart';

class CustomButtonLanguage extends StatelessWidget {
  final String stringbutton;
  final void Function()? onPressed;
  const CustomButtonLanguage({Key? key, required this.stringbutton, this.onPressed}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(onPressed:onPressed,
        color: Colors.red,
        child: Text(stringbutton),
      ),
    );
  }
}
