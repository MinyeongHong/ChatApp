import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/ListBody.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:Text("Chats"),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.search))
        ],
      ),
      body: Body(),
    );
  }
}
