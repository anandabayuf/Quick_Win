// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class ItemMenuDropdown extends PopupMenuItem<int>{
  ItemMenuDropdown(int value, String text):super(
    value: value,
    child: Align(
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontFamily: 'Comfortaa'
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}