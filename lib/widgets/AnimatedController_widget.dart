import 'package:flutter/material.dart';

class animated_controller extends StatefulWidget {
  const animated_controller({super.key});

  @override
  State<animated_controller> createState() => _animated_controllerState();
}

class _animated_controllerState extends State<animated_controller>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    animation = Tween<double>(begin: 100, end: 250).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hello controller ")),
      body: Column(
        children: [
          Center(
            child: AnimatedBuilder(
              animation: animation,
              builder: (context, child) {
                return Container(
                  width: animation.value,
                  height: animation.value,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Text("hello"),
                      Text("hello"),
                      Text("hello"),
                    ],
                  ),
                );
              },
            ),
          ),
          ElevatedButton(onPressed: () {
            if(controller.status==AnimationStatus.completed){
              controller.reverse();
            }else{
              controller.forward();
            }
          }, child: Text("go ")),
        ],
      ),
    );
  }
}
