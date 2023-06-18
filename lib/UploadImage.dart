import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({Key? key}) : super(key: key);

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  File? image;

  Future<void> _pickImage(ImageSource source ) async {
    final ImagePicker _picker = ImagePicker();
    final selected = await _picker.pickImage(source: source, imageQuality: 100);
    if(selected == null){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("No Image selected")));
      return;
    }
    setState(() {
      image = File(selected.path);
    });
    print(selected.path);
  }

  String? imageUrl;
  String? imagePath;
  Future<void> saveImage() async {
    if(image == null){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Pick Image")));
      return;
    }
    Reference storage = FirebaseStorage.instance.ref();
    String filename = DateTime.now().millisecondsSinceEpoch.toString() + ".jpg";
    final photo = await storage.child("products").child(filename).putFile(image!);
    final url = await photo.ref.getDownloadURL();
    setState(() {
      imageUrl = url;
      imagePath = photo.ref.fullPath;
    });
    print(imageUrl);
    print(imagePath);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Upload image"),),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            _pickImage(ImageSource.camera);
          }, child: Icon(Icons.camera)),
          ElevatedButton(onPressed: (){
            _pickImage(ImageSource.gallery);
          }, child: Icon(Icons.photo)),
          image == null ? Text("Selecte Image")
              : Image.file(image!, height: 200, width: 200,),
          ElevatedButton(onPressed: (){
            saveImage();
          }, child: Text("Upload"))
        ],
      ),
    );
  }
}
