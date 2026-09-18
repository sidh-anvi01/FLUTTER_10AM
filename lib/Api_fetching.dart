import 'package:flutter/material.dart';
import 'package:myapp/widgets/CustomButton.dart';
import 'package:myapp/widgets/CustomTextFeild.dart';
import 'Home_screen.dart';
class ApiFetching extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:
   Column(
    children: [
      Text("api fethcing "),
Custombutton(text: "Loginn Again", onPressed: (){
  print("hello login user ");
}),


      Custombutton(text: "add to cart", onPressed: (){
        print("added to cart ");
      }),
      
      Text("hello"),
      
      Customtextfeild(hintText: "pleaee enter the name"),
      Customtextfeild(hintText: "pleaee enter the email"),
      Customtextfeild(hintText: "pleaee enter the password"),




    ],
  ),

    );
  }
}


// http methods: get post put delete :


// flutter pub add http