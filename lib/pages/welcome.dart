import 'package:chatting/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Spacer(flex: 2),
              Image.asset("./assets/images/Orion_smiley.png"),
              Spacer(flex: 3),
              Text(
                "Welcome to Chat Room !",
                textAlign: TextAlign.center,
                style: Theme.of(context)
              .textTheme.headline5?.copyWith(fontWeight: FontWeight.bold)),
              Spacer(),
              Text(
                  "Blah Blah Blah ~~ ~~",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color:Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.64)),
              ),
              Spacer(flex: 2,),
              FittedBox(
                child: TextButton(
                    onPressed: (){},
                    child:Row(
                      children: [
                        Text(
                          "Skip",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.8)),
                        ),
                        SizedBox(width: kDefaultPadding/4,),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.8),
                        )
                      ],
                    )
                ),
              ),
              Spacer(),
            ],
          ),
        )
        
      ),
    );
  }
}
