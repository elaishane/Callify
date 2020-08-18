import 'package:apphigh_tech_assignment/swipe_button.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Stack(
          children: [
            Center(
              child: Text(
                "callify",
                textAlign: TextAlign.center,
                maxLines: 1,
                style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: "AvenirNextRounded",
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      textBaseline: TextBaseline.ideographic,
                      letterSpacing: 0.1,
                    ),
              ),
            ),
            Positioned(
              bottom: 45.0,
              left: 25.0,
              right: 25.0,
              child: SwipeButton(
                thumb: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                content: Center(
                  child: Text(
                    "Swipe to Call",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontFamily: "AvenirNextRounded",
                    ),
                  ),
                ),
                onChanged: (result) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
