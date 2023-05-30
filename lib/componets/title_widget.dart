import 'package:flutter/material.dart';
import 'package:projeto1/shared/styles.dart';

class TitleDefault extends StatelessWidget {
  final String _title;
  final double _fontSize;
  const TitleDefault({
    super.key, 
    required String title, 
    double? fontSize,
  }): 
  _title = title, 
  _fontSize = fontSize ?? 12;
  
  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style: TextStyle(
        color: AppStyle.primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: _fontSize,
      ),
    );
  }

}