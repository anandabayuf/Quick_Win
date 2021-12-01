// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, unnecessary_this, unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quick_win/const/ColorLibrary.dart';
import 'package:quick_win/views/customwidgets/CustomText.dart';

typedef void OnSelectedFunction(BuildContext context, int item);

class MenuDropdown extends StatefulWidget{
  final String menuName;
  final List<PopupMenuItem<int>> listItemDropdown;
  final OnSelectedFunction onSelectedFunction;

  MenuDropdown(this.menuName, this.listItemDropdown, this.onSelectedFunction);

  @override
  State<MenuDropdown> createState() => _MenuDropdownState(this.menuName,
      this.listItemDropdown, this.onSelectedFunction);
}

class _MenuDropdownState extends State<MenuDropdown> {
  final String menuName;
  final List<PopupMenuItem<int>> listItemDropdown;
  final OnSelectedFunction onSelectedFunction;

  _MenuDropdownState(this.menuName, this.listItemDropdown,
      this.onSelectedFunction);

  final _key = GlobalKey<PopupMenuButtonState>();
  late bool _isButtonClicked;

  @override
  void initState() {
    _isButtonClicked = true;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      key: _key,
      color: HexColor(ColorLibrary.backgroundColorSecondary),
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(29.0),
      ),
      tooltip: "Lihat menu ${this.menuName}",
      offset: Offset(0, 30),
      itemBuilder: (context) => listItemDropdown,
      onSelected: (item) => onSelectedFunction(context, item),
      child: Row(
        children: [
          CustomText(this.menuName, 15.0, HexColor(ColorLibrary.fontColorSecondary)),
          Icon(
            Icons.keyboard_arrow_down,
            size: 24.0,
            color: HexColor(ColorLibrary.fontColorSecondary),
          )
        ],
      ),
    );
  }
}