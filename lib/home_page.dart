import 'package:apphigh_tech_assignment/bottom_add_section.dart';
import 'package:apphigh_tech_assignment/call_button.dart';
import 'package:apphigh_tech_assignment/config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(130),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logo.png",
                height: 70,
                width: 70,
                filterQuality: FilterQuality.high,
              ),
//              Icon(
//                Icons.video_call,
//                color: Colors.white,
//                size: 75.0,
//              ),
              Text(
                "callify",
                style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: AppConfig.fontFamily,
                      letterSpacing: 0.3,
                    ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Enjoy free hd video calls",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
      body: CallButton(),
      bottomNavigationBar: BottomAdSection(),
    );
  }
}
