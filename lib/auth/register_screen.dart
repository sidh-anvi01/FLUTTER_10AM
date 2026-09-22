import 'package:flutter/material.dart';

class register_screen extends StatefulWidget {
  const register_screen({super.key});

  @override
  State<register_screen> createState() => _register_screenState();
}

class _register_screenState extends State<register_screen> {
  final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("register screen "),

            Form(
                key: formKey,
                child: Column(
              children: [
                TextFormField(
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "this is required ";
                    }
                    return null ;
                  },
                ),
                TextFormField(
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "this is required ";
                    }
                    if(!value.contains("@")){
                      return "enter a valid email";
                    }
                    return null ;
                  },
                ),
                TextFormField(

                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "this is required ";
                    }
                    if(value.length<6){
                      return "please make sure to add 6 letters ";
                    }
                    return null ;
                  },
                ),
                ElevatedButton(onPressed: (){
                  if(formKey.currentState!.validate()){
                    print("form is valid ");
                  }
                  else{
                    print("form is invalid ");
                  }
                }, child:Text("Register "))
              ],
            ))
          ],
        ),
      )
    );
  }
}
