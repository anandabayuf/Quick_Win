// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quick_win/const/ColorLibrary.dart';
import 'package:quick_win/views/customwidgets/CustomFooter.dart';
import 'package:quick_win/views/customwidgets/CustomText.dart';
import 'package:quick_win/views/home/widgets/AppbarCustom.dart';
import 'package:quick_win/views/home/widgets/DashboardComponent.dart';
import 'package:quick_win/views/home/widgets/ItemDashboardComponent.dart';
import 'package:quick_win/views/home/widgets/NameContainer.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppbarCustom(context),
      body: ColorfulSafeArea(
        color: HexColor(ColorLibrary.backgroundColorPrimary),
        child: Container(
          width: screenSize.width,
          height: screenSize.height,
          color: HexColor(ColorLibrary.backgroundColorPrimary),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                top: 10.0,
                left: 20.0,
                right: 20.0,
                bottom: 20.0
              ),
              child: Column(
                children: [
                  NameContainer(),
                  SizedBox(height: 30.0,),
                  DashboardComponent()
                  // ItemDashboardComponent(
                  //     HexColor("#FFEEE2"),
                  //     "PIP",
                  //     3000000000000,
                  //     20000,
                  //     90
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomSheet: CustomFooter(),
    );
  }
}