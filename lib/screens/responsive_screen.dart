// import 'package:flutter/material.dart';
//
// class ResponsiveScreen extends StatelessWidget {
//   const ResponsiveScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     double width=MediaQuery.of(context).size.width;
//     double height =MediaQuery.of(context).size.height;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("responsive screen"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Text("hello"),
//             Container(
//               height: height*0.3,
//               width: width*0.6,
//               color: Colors.red,
//               child: Container(
//                 height: height*0.1,
//                 width: width*0.4,
//                 color: Colors.blue,
//               ),
//             ),
//             Container(
//               height: height*0.3,
//               width: width*0.6,
//               color: Colors.red,
//               child: Container(
//                 height: height*0.1,
//                 width: width*0.4,
//                 color: Colors.blue,
//               ),
//             ),
//             Container(
//               height: height*0.3,
//               width: width*0.6,
//               color: Colors.red,
//               child: Container(
//                 height: height*0.1,
//                 width: width*0.4,
//                 color: Colors.blue,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Screen"),
      ),
      body: LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth <200){
            return Text("Small Screen");
          }
          return Text("Large Screen");
        }
      )
    );
  }
}
