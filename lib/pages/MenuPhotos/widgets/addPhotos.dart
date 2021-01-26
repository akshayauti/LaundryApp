import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddPhotos extends StatefulWidget {
  @override
  _AddPhotosState createState() => _AddPhotosState();
}

class _AddPhotosState extends State<AddPhotos> {
  File _image;
  final picker = ImagePicker();

  get floatingActionButton => null;

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 30,
      height: MediaQuery.of(context).size.height - 20,
      child: Scaffold(
          body: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.photo,
                color: Color(0xFFF9D307),
              ),
              SizedBox(width: 5),
              Text(
                'Photos',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.add_a_photo,
                  color: Color(0xFFF9D307),
                ),
                onPressed: getImage,
              ),
              Text(
                'Add Photos',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Center(
                child: _image == null
                    ? Text('No image selected.')
                    : Image.file(
                        _image,
                        height: 100,
                        width: 100,
                      ),
              ),
              Spacer(),
            ],
          ),
        ],
      )),
    );
  }
}
