import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// class About_screen extends StatelessWidget {
//
//  Future<void> getData() async{
//    var response=await http.get(
//      Uri.parse("https://jsonplaceholder.typicode.com/comments",),
//    );
//    print(response.body);
//  }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     appBar: AppBar(
//       title: Text("this  is about page"),
//     ),
//       body: Column(
//         children: [
//           // Icon(Icons.ice_skating_rounded),
//           // Icon(Icons.check)
//           Text("api fetching"),
//           ElevatedButton(onPressed: getData, child: Text("get data"))
//         ],
//       ),
//     );
//   }
// }



class About_screen extends StatefulWidget {

  @override
  State<About_screen> createState() => _About_screenState();
}

class _About_screenState extends State<About_screen> {
  List comments=[];

  Future<void> getuser() async{
    var response=await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/users")
    );
    setState(() {
      comments=jsonDecode(response.body);
    });

  }



@override
  void initState(){
    super.initState();
    getuser();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text("data from api"),
),
      body:ListView.builder(
        itemCount: comments.length,
        itemBuilder: (context ,index){
          return  ListTile(
            leading: CircleAvatar(
              child: Text("${comments[index]["id"]}"),
            ),
            title: Text(comments[index]["name"]),
          );
        },
      )
      );

  }
}
