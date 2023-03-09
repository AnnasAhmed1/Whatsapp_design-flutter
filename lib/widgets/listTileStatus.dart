import 'package:flutter/material.dart';
import 'package:whatsapp_replica/widgets/textWidget.dart';

listTileStatus(title, subTitle, time, notification, messageNUmber) {
  return (ListTile(
      title: Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: textWidget("My status", 20.0, true)),
      subtitle: textWidget("Tap to add status update", 16.0, false),
      leading: const CircleAvatar(
        radius: 25.0,
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1516767784670-cfc730ed0f87?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzZ8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60"),
        // child: Icon(Icons.add),
      )));
}
