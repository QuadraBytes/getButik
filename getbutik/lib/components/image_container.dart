import 'package:flutter/material.dart';
import 'package:getbutik/consts/constants.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImageContainer extends StatefulWidget {
  const ImageContainer({
    super.key,
    required this.title,
    required this.onClick,
    required this.image,
    required this.selectedImage,
  });

  final String title;
  final Function onClick;
  final XFile? image;
  final XFile? selectedImage;

  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        GestureDetector(
          onTap: () => widget.onClick(),
          child: Container(
            decoration: BoxDecoration(
              color: lightgrey,
              borderRadius: BorderRadius.circular(10),
              border: widget.selectedImage == null
                  ? null
                  : widget.selectedImage == widget.image
                      ? Border.all(color: yellow, width: 3)
                      : null,
            ),
            height: 200,
            child: Center(
              child: widget.image != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.file(
                        File(widget.image!.path),
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
        ),
      ],
    );
  }
}
