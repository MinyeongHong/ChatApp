import 'package:chatting/pages/Account/signInorUp.dart';
import 'package:chatting/pages/Chat/ChatList.dart';
import 'package:chatting/pages/welcome.dart';
import 'package:chatting/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: ChatListScreen(),
    );
  }
}
