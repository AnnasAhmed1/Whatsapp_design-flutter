import 'package:flutter/material.dart';

ActionIcons(icon) {
  return (Padding(
    padding: EdgeInsets.only(left: 18),
    child: GestureDetector(
        child: Icon(
      icon,
      size: 27,
    )),
  ));
}
