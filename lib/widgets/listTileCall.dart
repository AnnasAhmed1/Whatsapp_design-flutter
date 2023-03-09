import 'package:flutter/material.dart';
import 'package:whatsapp_replica/widgets/textWidget.dart';

listTileCall(title, subTitle, time, notification, messageNUmber) {
  return (ListTile(
      title: Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: textWidget("Create call link", 20.0, true)),
      subtitle: textWidget("Share a link for your WhatsApp call", 16.0, false),
      leading: const CircleAvatar(
        radius: 25.0,
        backgroundColor: Color.fromARGB(255, 20, 154, 138),
        child: Icon(Icons.link),
      )));
}
