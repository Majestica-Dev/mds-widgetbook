import 'package:flutter/material.dart';

extension ColorExtension on Color {
  String get toHexString {
    return '#${value.toRadixString(16).substring(2)}';
  }
}
