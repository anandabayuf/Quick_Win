// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quick_win/const/ColorLibrary.dart';
import 'package:quick_win/views/customwidgets/CustomText.dart';

class CustomFooter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
      height: 47,
      alignment: Alignment.center,
      color: HexColor(ColorLibrary.backgroundColorSecondary),
      child: RichText(
        text: TextSpan(
          text: "Pusat Layanan Pembiayaan Pendidikan © 2021 V 1.8 ",
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.bold
          ),
          children: [
            TextSpan(
              text: 'All Rights Reserved',
              style: TextStyle(
                fontWeight: FontWeight.normal
              ),
            ),
          ],
        ),
      )
    );
  }
}