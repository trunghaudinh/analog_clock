import 'package:flutter/material.dart';
import 'package:get/get.dart';

const kAnimationDuration = Duration(milliseconds: 200);

// Device Size
var height = Get.height;
var width = Get.width;

extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}