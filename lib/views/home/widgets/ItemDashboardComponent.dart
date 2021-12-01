// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quick_win/const/ColorLibrary.dart';
import 'package:quick_win/views/customwidgets/CustomText.dart';
import 'package:intl/intl.dart';

class ItemDashboardComponent extends StatelessWidget{
  final Color color;
  final String title;
  final int money;
  final int penerima;
  final int percentage;

  ItemDashboardComponent(this.color, this.title, this.money, this.penerima,
      this.percentage);

  @override
  Widget build(BuildContext context) {
    final formatCurrency = new NumberFormat.currency(locale: "id_ID", symbol: "Rp", decimalDigits: 0);
    final formatNumber = new NumberFormat.decimalPattern("id_ID");

    return Container(
      width: 470,
      height: 220,
      child: Card(
        elevation: 10.0,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(29.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: (481-20)/2,
                    alignment: Alignment.centerLeft,
                    child: CustomText(this.title, 20.0, Colors.black)
                  ),
                  SizedBox(height: 30.0,),
                  Text(
                    formatCurrency.format(this.money),
                    style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Container(
                    width: (481-20)/2,
                    alignment: Alignment.centerLeft,
                    child: CustomText("${formatNumber.format(this.penerima)} Penerima", 20.0, HexColor(ColorLibrary.fontColorSecondary))
                  ),
                ],
              ),
              CircularPercentIndicator(
                radius: 120.0,
                lineWidth: 10.0,
                animation: true,
                animationDuration: 1200,
                percent: percentage/100,
                center: Text(
                  "${this.percentage}%",
                  style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.black,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.bold
                  ),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.black,
                backgroundColor: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}