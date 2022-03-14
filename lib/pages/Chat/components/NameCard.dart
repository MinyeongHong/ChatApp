import 'dart:ffi';

import 'package:chatting/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/ChatListModel.dart';

class NameCard extends StatelessWidget {
  const NameCard({
    Key? key,
    required this.chat,
    required this.press,
  }) : super(key: key);

  final Chat chat;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,vertical: kDefaultPadding*0.75),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage:AssetImage("./assets/images/Orion_smiley.png"),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  children: [
                    Text(
                      chat.name,
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 10,),
                    Opacity(
                      opacity: 0.64,
                      child: Text(
                        chat.lastMessage,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Opacity(
              opacity: 0.64,
              child: Text(chat.time),
            )
          ],
        ),
        )
    );
  }
}
