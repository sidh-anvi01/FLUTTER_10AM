import 'package:flutter/material.dart';

class animated_opacity extends StatefulWidget {
  const animated_opacity({super.key});

  @override
  State<animated_opacity> createState() => _animated_opacityState();
}

class _animated_opacityState extends State<animated_opacity> {
   bool isVisible=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:Column(
        children:[
          Text("hello"),

          AnimatedOpacity(
            opacity:isVisible?1.0:0.5,
            duration:const Duration(milliseconds: 500),
            curve:Curves.easeInOut,
            child:Container(
              height:200,
              width:200,
              color:Colors.red,
              alignment: isVisible ?Alignment.center :Alignment.topLeft,

            )
          ),

          ElevatedButton(
            onPressed:(){
              setState(() {
                isVisible=!isVisible;
              });
            },
            child:Text("Toggle Visibility")
          )

        ]
      )

    );
  }
}
