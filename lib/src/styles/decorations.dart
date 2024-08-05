import 'package:ezyagric_commons/src/styles/colors.dart';
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
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(width: 1, color: AppColors.color25),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(width: 1, color: Colors.red),
  ),
);

var saveButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFF27ae61),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)));
