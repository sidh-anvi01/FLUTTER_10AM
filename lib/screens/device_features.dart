import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class device_features extends StatefulWidget {
  const device_features({super.key});

  @override
  State<device_features> createState() => _device_featuresState();
}

class _device_featuresState extends State<device_features> {


  File? image ;
  final ImagePicker picker = ImagePicker();

  // camera:
  Future<void> openCamera() async{
    final XFile? pickeImage=await  picker.pickImage(source: ImageSource.camera);


    if(pickeImage!=null){
      setState(() {
        image=File(pickeImage.path);
      });
    }

  }

  // gallary:
  Future<void> openGallary() async{
    final XFile? pickeImage=await  picker.pickImage(source: ImageSource.gallery);


    if(pickeImage!=null){
      setState(() {
        image=File(pickeImage.path);
      });
    }

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Device Features'),
      ),
      body: const Center(
        child: Column(

        children: [
          image != null ? Image.file(image!):
          const Icon(Icons.camera),

          ElevatedButton(onPressed: openCamera, child: const Text('Open Camera')),
          ElevatedButton(onPressed: openGallary, child: const Text('Open Gallery'))
        ],


        ),
      ),
    );
  }
}
