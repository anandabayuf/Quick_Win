// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quick_win/views/customwidgets/CustomText.dart';

class NameContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: CustomText("Halo, John !", 24.0, Colors.black)
    );
  }
}