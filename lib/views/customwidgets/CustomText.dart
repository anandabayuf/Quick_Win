// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget{
  late String text;
  late double fontSize;
  late Color color;

  CustomText(this.text, this.fontSize, this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontFamily: 'Comfortaa'
      ),
    );
  }
}