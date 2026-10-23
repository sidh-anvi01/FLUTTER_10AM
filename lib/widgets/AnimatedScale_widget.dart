// import 'package:flutter/material.dart';

// class animated_scale extends StatefulWidget {
//   const animated_scale({super.key});

//   @override
//   State<animated_scale> createState() => _animated_scaleState();
// }

// class _animated_scaleState extends State<animated_scale> {
//   @override
//   Widget build(BuildContext context) {
//     bool isLarge=true ;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Animated Scale"),
//       ),
//      body: Center(
//         child:AnimatedScale(
//           scale:isLarge ? 1.5:1.0 ,
//           duration: Duration(milliseconds: 500),
//           curve:Curves.easeInOut,
//           alignment:Alignment.center,
//           child:Container(
//             width:100,
//             height:100,
//             color: Colors.blue,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//             ),
//           )
//         ),




//      )

//      );
//   }
// }




import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}