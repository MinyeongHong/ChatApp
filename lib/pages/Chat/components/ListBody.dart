import 'package:chatting/constants.dart';
import 'package:chatting/models/ChatListModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../ChatRoom.dart';
import 'NameCard.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        itemCount:chatsData.length,
        itemBuilder: (context,index) => NameCard(
          chat: chatsData[index],
          press: () => Navigator.push(
            context,MaterialPageRoute(builder: (context)=>ChatRoomScreen())
          ),
        )),
    );
  }
}
