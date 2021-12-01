// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quick_win/views/home/widgets/ItemDashboardComponent.dart';

class DashboardComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ItemDashboardComponent(
                HexColor("#FFEEE2"),
                "PIP",
                3000000000000,
                20000,
                90
            ),
            SizedBox(width: 30.0,),
            ItemDashboardComponent(
                HexColor("#EEFCEF"),
                "KIP Kuliah",
                1000000000000,
                15000,
                80
            ),
            SizedBox(width: 30.0,),
            ItemDashboardComponent(
                HexColor("#E6F5FA"),
                "Beasiswa Unggulan",
                2000000000000,
                18000,
                70
            ),
          ],
        ),
        SizedBox(height: 30.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ItemDashboardComponent(
                HexColor("#F4F5F9"),
                "Tunjangan Profesi",
                1500000000000,
                20000,
                60
            ),
            SizedBox(width: 30.0,),
            ItemDashboardComponent(
                HexColor("#F9F8F3"),
                "Afirmasi Dikti",
                2500000000000,
                17000,
                75
            ),
          ],
        )
      ],
    );
  }
}