import 'package:flutter/material.dart';

import '../../../constants.dart';

class InputField extends StatelessWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding/2,
      ),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
                offset: Offset(0,4),
                blurRadius: 22,
                color: Theme.of(context).colorScheme.primary.withOpacity(0.3)
            )]
      ),
      child: SafeArea(
        child: Row(
          children: [
            Icon(Icons.mic,color: kPrimaryColor,),
            SizedBox(
              width: kDefaultPadding,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.75),
                height: 50,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    Icon(Icons.sentiment_satisfied_alt_outlined,
                      color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.64),),
                    SizedBox(width: kDefaultPadding/4,),
                    Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Type message",
                              border: InputBorder.none
                          ),
                        )),
                    Icon(Icons.attach_file,
                      color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.64),),
                    Icon(Icons.camera_alt_outlined,
                      color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.64),),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}