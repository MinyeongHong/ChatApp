import 'package:chatting/constants.dart';
import 'package:chatting/pages/Chat/components/MessageBody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatRoomScreen extends StatelessWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            BackButton(),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/tester.png"),
            ),
            SizedBox(width: kDefaultPadding * 0.75,),
            Column(
              children: [
                Text("chat.name", style: TextStyle(fontSize: 16),),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.local_phone),
            onPressed: (){},
          ),
        ],
      ),
      body: MessageBody(),
    );
  }
}
