import 'package:chatting/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountMain extends StatelessWidget {
  const AccountMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(flex: 2),
              Image.asset("./assets/images/Orion_smiley.png"),

              Text(
                  "Join Our Chat Room !",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme.headline5?.copyWith(fontWeight: FontWeight.bold)),
              Spacer(flex: 3,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).colorScheme.primary,
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 15),),
                  onPressed: (){},
                  child: Text(
                    "Sign in",
                    style:Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Theme.of(context).colorScheme.secondary,padding: EdgeInsets.fromLTRB(0, 15, 0, 15)),
                onPressed: (){},
                child: Text(
                  "Sign up",
                  style:Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold,color: Colors.white),
                ),),
              Spacer(flex: 2,),
            ],
          ),

        )
      ),
    );
  }
}
