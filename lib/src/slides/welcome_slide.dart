import 'package:flutter/material.dart';
import 'package:welcome/src/slides/two_sides_slide.dart';

enum WelcomeState {
  first,
  second
}

class WelcomeSlide extends StatelessWidget {
  final WelcomeState state;

  const WelcomeSlide({Key key, this.state = WelcomeState.first}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TwoSidesSlide(
      rightChild: Scaffold(
        backgroundColor: Colors.white70,
        body: Row(
          children: <Widget>[
            state == WelcomeState.second ?
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                child: RichText(
                  text: TextSpan(
                    text: 'Lifull Connect Talks ',
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.w600, color: Colors.black87),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'presenta...',
                          style: Theme.of(context).textTheme.display3),
                    ],
                  ),
                ),
              )
                : Container()
          ],
        ),
      )
    );
  }
}