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
    try {
      var response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/users"),
      );

      if (response.statusCode == 200 && response.body.isNotEmpty) {
        final decoded = jsonDecode(response.body);
        if (decoded is List) {
          setState(() {
            comments = decoded;
          });
        }
      }
    } catch (_) {
      setState(() {
        comments = [];
      });
    }
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
            title: Text(comments[index]["name"],
              style: Theme.of(context)
                  .textTheme.headlineLarge,),
            subtitle:Text(comments[index]["name"],
              style: Theme.of(context)
                  .textTheme.bodyLarge,),
          );
        },
      )
      );

  }
}
