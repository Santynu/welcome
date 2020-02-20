import 'package:flutter/material.dart';
import 'package:welcome/src/slides/sides_slide.dart';

enum WaitingState {
  first,
  second
}

class WaitingSlide extends StatelessWidget {
  final WaitingState state;

  const WaitingSlide({Key key, this.state = WaitingState.first}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffed6103),
        body: Padding(
          padding: const EdgeInsets.only(top: 400),
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/lifull_connect_logo_negative.png"),
                isSecondState() ?
                  bodyLine(context, "presenta") : Container()
              ]
            ),
          ),
        )
    );
  }

  Text bodyLine(BuildContext context, String text) {
    return Text(text,
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'GoogleSans',
                    color: Colors.white
                  )
                );
  }

  bool isSecondState() => state == WaitingState.second;
}