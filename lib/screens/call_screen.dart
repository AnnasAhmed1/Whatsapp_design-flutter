import 'package:flutter/material.dart';
import 'package:whatsapp_replica/widgets/listTile.dart';
import 'package:whatsapp_replica/widgets/listTileCall.dart';

List messageArr = [
  "December 2, 3.34 PM",
  "December 1, 5.50 PM",
  "November 30, 4.45 PM",
  "November 28, 01.50 AM",
  "November 26, 1.34 PM",
  "November 25, 6.34 PM",
];

List imagesArr = [
  "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=785&q=80",
  "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
  "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
  "https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  "https://images.unsplash.com/photo-1516767784670-cfc730ed0f87?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzZ8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
];

CallScreen() {
  return (Scaffold(
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        listTileCall("title", "subTitle", "time", false, "messageNUmber"),
        const Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: Text(
            "Recent",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 17.0,
                color: Color.fromARGB(255, 124, 124, 124),
                fontWeight: FontWeight.bold),
          ),
        ),
         Container(
          height: 500,
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, i) {
              return (listTile("Contact $i", messageArr[i], "timeArr[i]", false,
                  "${i + 1}", "${imagesArr[i]}", false));
            },
          ),
        )
      ],
    ),
  ));
}
