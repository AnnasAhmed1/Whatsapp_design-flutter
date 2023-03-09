import 'package:flutter/material.dart';
import 'package:whatsapp_replica/widgets/listTileStatus.dart';
import 'package:whatsapp_replica/widgets/textWidget.dart';

StatusScreen() {
  return (Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      listTileStatus("title", "subTitle", "time", false, " messageNUmber"),
      const Padding(
        padding:  EdgeInsets.only(left: 18.0),
        child: Text(
          "Recent updates",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 17.0,
              color: Color.fromARGB(255, 124, 124, 124),
              fontWeight: FontWeight.bold),
        ),
      )
    ],
  ));
}
