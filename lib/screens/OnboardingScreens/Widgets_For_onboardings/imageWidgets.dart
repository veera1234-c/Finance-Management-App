import 'package:flutter/material.dart';

class ImageTopUI extends StatelessWidget {
  ImageTopUI({
    this.imagePath,
    super.key,
  });
  String? imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(imagePath!),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.4,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
              bottom:
                  Radius.elliptical(MediaQuery.of(context).size.width, 150)),
          boxShadow: [
            BoxShadow(
                offset: Offset(4, 4),
                blurRadius: 100,
                spreadRadius: 50,
                color: Colors.deepPurple.shade900)
          ]),
    );
  }
}
