import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/ChatMessageModel.dart';


class Message extends StatelessWidget {
  const Message({Key? key, required this.message}) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment:
        message.isSender? MainAxisAlignment.end:MainAxisAlignment.start,
        children: [
          if(!message.isSender) ...[
            CircleAvatar(
              radius: 12,
              backgroundImage:AssetImage("./assets/images/tester.png"),
            )
          ],
          SizedBox(width: kDefaultPadding * 0.25,),
          TextBox(message: message,)
        ],
      ),
    );
  }
}

class TextBox extends StatelessWidget {
  const TextBox({Key? key, required this.message}) : super(key: key);

  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 0.75,
            vertical: kDefaultPadding /2),
        decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(message.isSender? 1 : 0.1),
            borderRadius: BorderRadius.circular(30)),
        child:Text(message.text,
          style: TextStyle(
              color: message.isSender
                  ? Colors.white
                  :Theme.of(context).textTheme.bodyText1?.color),)
    );
  }
}
