import 'dart:io';
import 'package:flutter/material.dart';
import 'package:getbutik/components/button.dart';
import 'package:getbutik/components/image_container.dart';
import 'package:getbutik/components/input_container.dart';
import 'package:getbutik/components/long_input_container.dart';
import 'package:getbutik/components/main_button.dart';
import 'package:getbutik/components/topic.dart';
import 'package:image_picker/image_picker.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final ImagePicker _picker = ImagePicker();
  XFile? mainImage;
  XFile? detailImage;
  XFile? selectedImage;
  bool isMainImage = true;

  void _pickImage(bool isMain) async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        if (isMain) {
          mainImage = image;
          isMainImage = false;
        } else {
          detailImage = image;
        }
      });
    }
  }

  void _deleteImage(XFile? image) {
    setState(() {
      if (image == mainImage) {
        mainImage = null;
        isMainImage = true;
      } else if (image == detailImage) {
        detailImage = null;
      }
      if (selectedImage == image) {
        selectedImage = null;
      }
    });
  }

  void _selectImage(XFile image) {
    setState(() {
      selectedImage = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Topic(title: 'Add Item'),
                    SizedBox(height: 20),
                    InputContainer(
                      title: 'Item Name',
                    ),
                    SizedBox(height: 20),
                    InputContainer(
                      title: 'Item Brand',
                    ),
                    SizedBox(height: 20),
                    InputContainer(
                      title: 'Item Price',
                    ),
                    SizedBox(height: 20),
                    LongInputContainer(
                      title: 'Item Description',
                    ),
                    SizedBox(height: 20),
                    MainButton(
                      title: 'Save Item',
                    ),
                  ],
                ),
              ),
              SizedBox(width: 40),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60),
                  Text(
                    'Images',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () => _pickImage(isMainImage),
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(224, 224, 224, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              child: Image.asset(
                                'assets/camera.png',
                                fit: BoxFit.contain,
                                width: size.width * 0.1,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Take a Photo',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 105, 105, 105),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: ImageContainer(
                          title: 'Main Image',
                          onClick: () => _selectImage(mainImage!),
                          image: mainImage,
                          selectedImage: selectedImage,
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                          child: ImageContainer(
                        title: 'Detail Image',
                        onClick: () => _selectImage(detailImage!),
                        image: detailImage,
                        selectedImage: selectedImage,
                      )),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Button(
                        title: 'Edit Image',
                        icon: Icons.edit,
                        onClick: () {},
                      ),
                      SizedBox(width: 20),
                      Button(
                        title: 'Delete Image',
                        icon: Icons.delete,
                        onClick: () => _deleteImage(selectedImage),
                      ),
                    ],
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}

