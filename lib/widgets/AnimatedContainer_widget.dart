import 'package:flutter/material.dart';

class animated_container extends StatefulWidget {
  const animated_container({super.key});

  @override
  State<animated_container> createState() => _animated_containerState();
}

class _animated_containerState extends State<animated_container> {
  bool isAnimated=false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
              width: isAnimated ? 200 : 100,
              height: isAnimated ? 200 : 100,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(isAnimated ? 20 : 0)
              ),
            ),
             ElevatedButton(onPressed: (){
               setState(() {
                 isAnimated = !isAnimated;
               });
             }, child: const Text("Toggle")),

          ],
        ),
        
        
      ),
    );
  }
}
