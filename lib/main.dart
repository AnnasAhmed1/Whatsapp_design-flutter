import 'package:flutter/material.dart';
import 'package:whatsapp_replica/screens/call_screen.dart';
import 'package:whatsapp_replica/screens/chat_screen.dart';
import 'package:whatsapp_replica/screens/status_screen.dart';
import 'package:whatsapp_replica/widgets/actionIcons.dart';
import 'package:whatsapp_replica/widgets/textWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Color(0xff006257),
                title: textWidget("Whatsapp Bussiness", 23.0, true),
                actions: [
                  ActionIcons(Icons.camera_alt_outlined),
                  ActionIcons(Icons.search_sharp),
                  ActionIcons(Icons.more_vert_sharp),
                ],
                bottom: TabBar(tabs: [
                  Tab(child: textWidget("CHATS", 15.0, false)),
                  Tab(child: textWidget("STATUS", 15.0, false)),
                  Tab(child: textWidget("CALLS", 15.0, false)),
                ]),
              ),
              body: TabBarView(
                children: [
                  ChatScreen(),
                  StatusScreen(),
                  CallScreen(),
                ],
              ),
            ))));
  }
}
