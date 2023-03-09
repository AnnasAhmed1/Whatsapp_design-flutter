import 'package:flutter/material.dart';
import 'package:whatsapp_replica/widgets/textWidget.dart';

listTile(title, subTitle, time, notification, messageNUmber, imageAddress,
    callIcon) {
  return (ListTile(
      title: textWidget(title, 19.0, true),
      subtitle: textWidget(subTitle, 16.0, false),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          callIcon
              ? Text(time,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color.fromARGB(255, 28, 156, 75),
                  ))
              : const Icon(
                  Icons.call,
                  color: Color.fromARGB(255, 28, 156, 75),
                ),
          const SizedBox(
            height: 5,
          ),
          notification
              ? CircleAvatar(
                  radius: 11,
                  backgroundColor: Color(0xff25D366),
                  child: Text(
                    messageNUmber,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              : const Text("")
        ],
      ),
      leading: CircleAvatar(
        radius: 25.0,
        backgroundImage: NetworkImage("${imageAddress}"),
      )));
}
