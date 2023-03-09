import 'package:flutter/material.dart';

textWidget(text, fontSize, [fontWeight]) {
  return (Text(
    text,
    style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight ? FontWeight.bold : FontWeight.normal),
  ));
}
