import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



// class Home_screen extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// appBar: AppBar(
//   title: Text("this is home screen"),
// ),
//     body: SingleChildScrollView(
//       child: Column(
//         children: [
//           Text("hello wolrd "),
//           Text("go to about page "),
//           ElevatedButton(onPressed: (){}, child: Text("click to about")),  Text("hello wolrd "),
//           Text("go to about page "),
//           ElevatedButton(onPressed: (){}, child: Text("click to about")),Text("hello"),
//
//         ],
//       ),
//     ),
//     );
//   }
// }




class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}


class _Home_screenState extends State<Home_screen> {


  TextEditingController nameController=TextEditingController();
   String savedData="";

  //  save data
   Future<void> saveData() async{
      SharedPreferences prefs= await SharedPreferences.getInstance();
      await prefs.setString("name", nameController.text);
      // setState(() {
      //   savedData=nameController.text;
      // });

   }

  //  get Data :

  Future<void> getData()async{
    SharedPreferences prefs= await SharedPreferences.getInstance();
    String ? name =prefs.getString("name") ;
    setState(() {
      savedData =name?? "";
    });
  }


  @override
  void initState(){
     super.initState();
     getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("this is local storage"),
      ),
      body: Column(
        children: [
          Text("save and get data "),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              labelText: "enter data",
              border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed:saveData, child: Text("save")),

          Text("save , $savedData "),
        ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart' ;
//
// class Home_screen extends StatefulWidget {
//   const Home_screen({super.key});
//
//   @override
//   State<Home_screen> createState() => _Home_screenState();
// }
//
// class _Home_screenState extends State<Home_screen> {
//   TextEditingController nameController=TextEditingController();
//
//   String savedData="";
//   Future <void> setData() async{
//     SharedPreferences prefs=await  SharedPreferences.getInstance();
//     String name="rohan";
//
//     await prefs.setString("abc", name);
//     // setState(() {
//     //   savedData=name;
//     // });
//   }
//
//   Future<void> getData() async{
//     SharedPreferences prefs=await SharedPreferences.getInstance();
//     String ?abc=  await prefs.getString("abc");
//     setState(() {
//       savedData=abc?? "";
//     });
//
//   }
//
//   @override
//   void initState(){
//     super.initState();
//     getData();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("hello local storage "),
//       ),
//       body: Column(
//         children: [
//           Text("hello please create the data to store this"),
//
//           TextField(
//             controller: nameController,
//           ),
//
//           ElevatedButton(onPressed: setData, child: Text("save data")),
//           Text("$savedData"),
//
//         ],
//       ),
//     );
//   }
// }
