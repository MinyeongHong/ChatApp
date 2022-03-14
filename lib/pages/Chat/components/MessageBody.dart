import 'package:chatting/constants.dart';
import 'package:chatting/models/ChatMessageModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'InputField.dart';
import 'Message.dart';

class MessageBody extends StatelessWidget {
  const MessageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
                itemBuilder: (context, index) => Message(message: demeChatMessages[index],)),
          )
        ),
        InputField()
      ],
    );
  }
}
