import 'dart:io';
import 'package:flutter/material.dart';
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

  Widget _buildImageContainer(XFile? image) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = image;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(224, 224, 224, 1),
          borderRadius: BorderRadius.circular(10),
          border: selectedImage == null
              ? null
              : selectedImage == image
                  ? Border.all(color: Color.fromRGBO(244, 204, 36, 1), width: 3)
                  : null,
        ),
        height: 200,
        child: Center(
          child: image != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.file(
                    File(image.path),
                    fit: BoxFit.cover,
                    width: size.width * 0.24,
                  ),
                )
              : ClipRRect(
                  child: Image.asset(
                    'assets/image.png',
                    fit: BoxFit.contain,
                    width: size.width * 0.05,
                  ),
                ),
        ),
      ),
    );
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
                    Text(
                      'Add Item',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Item Name',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(224, 224, 224, 1),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        filled: true,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Item Brand',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(224, 224, 224, 1),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        filled: true,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Item Price',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(224, 224, 224, 1),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        filled: true,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Item Description',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      maxLines: 8,
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(224, 224, 224, 1),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        filled: true,
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Save Item',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 60, vertical: 5)),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(244, 204, 36, 1)),
                      ),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Main Image',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            _buildImageContainer(mainImage)
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Detail Image',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            _buildImageContainer(detailImage)
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.edit,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Edit Image',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5)),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(244, 204, 36, 1)),
                        ),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: selectedImage != null
                            ? () => _deleteImage(selectedImage)
                            : null,
                        child: Row(
                          children: [
                            Icon(
                              Icons.delete,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Delete Image',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5)),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(244, 204, 36, 1)),
                        ),
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
