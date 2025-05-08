import 'package:flutter/material.dart';

class MainCardWidget extends StatelessWidget {
  const MainCardWidget({
    super.key,
  
    required this.imageHeight,
    required this.imagepath,
    required this.imageWidth,
  });

 
  final double imageHeight;
  final double imageWidth;
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        imagepath,
        width: imageWidth,
        height: imageHeight,
        fit: BoxFit.cover,
      ),
    );
  }
}
