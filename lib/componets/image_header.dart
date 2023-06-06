import 'package:flutter/material.dart';

class ImageHeader extends StatelessWidget{
  const ImageHeader({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Image.asset(
        'assets/images/logo.png',
        width: 40,
      ),
    );
  }
}