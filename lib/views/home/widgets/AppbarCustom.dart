// ignore_for_file: file_names, prefer_const_constructors

import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quick_win/const/ColorLibrary.dart';
import 'package:quick_win/views/customwidgets/CustomText.dart';
import 'package:quick_win/views/home/widgets/ItemMenuDropdown.dart';
import 'package:quick_win/views/home/widgets/MenuDropdown.dart';

class AppbarCustom extends AppBar{
  static List<PopupMenuItem<int>> listItemDropdownPIP = [
    ItemMenuDropdown(0, "Penyaluran (Rekap)"),
    ItemMenuDropdown(1, "Penyaluran (BNBA)"),
    ItemMenuDropdown(2, "SK Nominasi"),
    ItemMenuDropdown(3, "SK Pemberian"),
  ];

  static List<PopupMenuItem<int>> listItemDropdownDefault = [
    ItemMenuDropdown(0, "Penyaluran (Rekap)"),
    ItemMenuDropdown(1, "Penyaluran (BNBA)"),
  ];

  static List<PopupMenuItem<int>> listItemDropdownCari = [
    ItemMenuDropdown(0, "PIP"),
    ItemMenuDropdown(1, "KIP Kuliah"),
    ItemMenuDropdown(2, "Afirmasi Dikti"),
    ItemMenuDropdown(3, "Tunjangan Profesi"),
  ];

  static void onSelectedPIP(BuildContext context, int item){
    print(item);
  }

  static void onSelectedKIPKuliah(BuildContext context, int item){
    print(item);
  }

  static void onSelectedBeasiswaUnggulan(BuildContext context, int item){
    print(item);
  }

  static void onSelectedAfirmasiDikti(BuildContext context, int item){
    print(item);
  }

  static void onSelectedTunjanganProfesi(BuildContext context, int item){
    print(item);
  }

  static void onSelectedCari(BuildContext context, int item) {
    print(item);
  }

  AppbarCustom(BuildContext appbarContext, {Key? key}):super(
    key: key,
    elevation: 0.0,
    backgroundColor: HexColor(ColorLibrary.backgroundColorPrimary),
    leadingWidth: 321,
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          print("clicked title");
        },
        child: Row(
          children: [
            Image.asset(
              'assets/images/logo/logo_puslapdik.png',
              width: 50,
              height: 50,
            ),
            SizedBox(width: 5.0,),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 250,
                child: CustomText("PUSAT LAYANAN PEMBIAYAAN PENDIDIKAN KEMENTERIAN PENDIDIKAN, "
                    "KEBUDAYAAN RISET DAN TEKNOLOGI", 10.0, Colors.black),
              ),
            )
          ],
        ),
      ),
    ),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: (){
            print("clicked home");
          },
          child: CustomText("Home", 15.0, Colors.black)
        ),
        SizedBox(width: 30.0,),
        MenuDropdown("PIP", listItemDropdownPIP, onSelectedPIP),
        SizedBox(width: 30.0,),
        MenuDropdown("KIP Kuliah", listItemDropdownDefault, onSelectedKIPKuliah),
        SizedBox(width: 30.0,),
        MenuDropdown("Beasiswa Unggulan", listItemDropdownDefault, onSelectedBeasiswaUnggulan),
        SizedBox(width: 30.0,),
        MenuDropdown("Afirmasi Dikti", listItemDropdownDefault, onSelectedAfirmasiDikti),
        SizedBox(width: 30.0,),
        MenuDropdown("Tunjangan Profesi", listItemDropdownDefault, onSelectedTunjanganProfesi),
        SizedBox(width: 30.0,),
        MenuDropdown("Cari", listItemDropdownCari, onSelectedCari)
      ],
    ),
  );
}