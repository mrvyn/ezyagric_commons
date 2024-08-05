import 'package:flutter/material.dart';

var bottomSheetDecoration = const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.vertical(top: Radius.circular(25)));

var textFormFieldDecoration = const InputDecoration(
  hintText: "Text goes here...",
  hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(width: 1, color: Colors.grey),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(width: 1, color: Colors.grey),
  ),
);
