import 'package:flutter/material.dart';
import 'package:myapp/Home_screen.dart';
import 'package:myapp/About_screen.dart';
import 'package:myapp/Api_fetching.dart';
// import '/app_theme.dart';
import 'package:myapp/app_theme.dart';
void main() {
  runApp(const MyApp());
}


// this is the root widget:
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      home: const DemmoNavigation(),
    );
  }
}


// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Text("hello navigation")
//         ],
//       ),
//     );
//   }
// }
//



class DemmoNavigation extends StatefulWidget {
  const DemmoNavigation({super.key});

  @override
  State<DemmoNavigation> createState() => _DemmoNavigationState();
}

class _DemmoNavigationState extends State<DemmoNavigation> {

  int selectedIndex=0;

  final List<Widget> screens=[
    Home_screen(),
    About_screen(),
    ApiFetching(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:selectedIndex ,
        onTap: (index) {
          setState(() {
            selectedIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),

            label: "About",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc_outlined),

            label: "Api",
          ),
        ],
      ),
    );
  }
}

// class CounterApp extends StatefulWidget {
//
//
//   @override
//   State<CounterApp> createState() => _CounterAppState();
// }
//
// class _CounterAppState extends State<CounterApp> {
//
//   int count=0;
//
//
//   void increament(){
// setState(() {
//   count+=1;
//   print(count);
// });
//   }
//   void decreament(){
//     setState(() {
//       count-=1;
//     });
//   }
//
//   void reset(){
//     setState(() {
//       count=0;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(30.0),
//         child: Column(
//           children: [
//             Text("hello statefull widget"),
//             Text("$count",style: TextStyle(fontSize: 30),),
//             ElevatedButton(onPressed: increament, child: Text("increase")),
//             ElevatedButton(onPressed: decreament, child: Text("decreament")),
//             ElevatedButton(onPressed: reset, child: Text("reset")),
// ListView(
//   children: [
//     Text("a"),
//     Text("b"),
//     Text("c"),
//     Text("d"),
//     Text("e"),
//
//   ],
// ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//
// class HomePage  extends StatelessWidget {
//
// List<String> fruits=["apple","abc","cbibur","palm",];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:
//       // ListView(
//       //   children: [
//       //     Text("hello"),
//       //     Text("hello"),
//       //     Text("hello"),
//       //     Text("hello"),
//       //     Text("hello"),
//       //
//       //   ],
//       // ),
//       // Column(
//       //   children: [
//       //
//       //     ElevatedButton(onPressed: (){
//       //       Navigator.push(context,
//       //         MaterialPageRoute(
//       //           builder: (context)=>About_screen(),
//       //         ),
//       //       );
//       //     }, child: Text("go to about ")),
//       //     ElevatedButton(onPressed: (){
//       //       Navigator.push(context,
//       //         MaterialPageRoute(
//       //           builder: (context)=>ApiFetching(),
//       //         ),
//       //       );
//       //     }, child: Text("go to Api ")),
//           // ElevatedButton(onPressed: (){
//           //   Navigator.push(context,
//           //     MaterialPageRoute(
//           //       builder: (context)=>About_screen(),
//           //     ),
//           //   );
//           // }, child: Text("go to... ")),
//         ],
//       ),
//     );
//   }
// }

// ListView:
// state: used to manage the local state inside the widgets :
// setState():used to update the state : (setter function )



// class MyHomePage extends StatelessWidget {
//
//
//   final TextEditingController nameController=TextEditingController();
//   final TextEditingController emailController=TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("this is my App"),
//       ),
//       body:
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               // Text("hello"),
//               // Text("hello"),
//               // Text("hello"),
//               // Text("hello"),
//           // Container(
//           //   // padding: EdgeInsets.all(22),
//           //   margin: EdgeInsets.all(100),
//           //   height: 40,
//           //   width: 200,
//           //   color: Colors.blue,
//           //   child: Text("hello container"),
//           // ),
//           //     TextButton(onPressed: (){
//           //       print("this is the text button");
//           //     },
//           //     child: Text("forgot password"),
//           //     ),
//           //     ElevatedButton(onPressed: ()
//           //         {
//           //           print("login succcess");
//           //         }, child: Text("Login ")),
//           //     OutlinedButton(onPressed: (){
//           //       print("outlined button pressed");
//           //     }, child: Text("Outlined")),
// TextField(
//   controller: nameController,
//   decoration: InputDecoration(
//     labelText: "Enter Text",
//     hintText: "your name",
//     border: OutlineInputBorder(),
//
//   ),
// ),
//               SizedBox(height: 30,),
//               TextField(
//                 controller: emailController,
//                 decoration: InputDecoration(
//                   labelText: "Enter Text",
//                   hintText: "your name",
//                   border: OutlineInputBorder(),
//
//                 ),
//
//               ),
//               SizedBox(height: 30,),
//
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: "Enter Text",
//                   hintText: "your name",
//                   border: OutlineInputBorder(),
//
//                 ),
//               ),
//               TextButton(onPressed: (){}, child: Text("forgot password")),
//               SizedBox(height: 30,),
//
//               // FloatingActionButton(onPressed: (){
//               //   print(nameController.text);
//               //   print(emailController.text);
//               // },child: Text("click"),),
//               ElevatedButton(onPressed: (){
//                 print(emailController.text);
//                 print(nameController.text);
//               }, child: Text("print data")),
//               SizedBox(height: 30,),
//             ],
//           ),
//         ),
//
//
//
//     );
//   }
// }
//


//Buttons:textbutton:
// elevated button:
// outlinedbutton :

//TextField:for inputes:


// controller :

// ssizedbox:




// class Profile_screen extends StatelessWidget {
//   const Profile_screen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Text("this is the navigation for multiple screen"),
//           ElevatedButton(onPressed: (){
//             Navigator.pop(context);
//           }, child: Text("got back")),
//           TextButton(onPressed: (){
//             Navigator.pop(context);
//           }, child: Text("got back"))
//         ],
//       ),
//     );
//   }
// }






// class About_screen extends StatelessWidget {
//   const About_screen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(100.0),
//         child: Center(
//           child: Column(
//             children: [
//               Text("this is the navigation for multiple screen"),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
