import 'package:flutter/material.dart';
class login_screeen extends StatefulWidget {
  const login_screeen({super.key});

  @override
  State<login_screeen> createState() => _login_screeenState();
}

class _login_screeenState extends State<login_screeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Text('Login Screen'),
      ),
    );
  }
}
