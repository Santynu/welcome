import 'package:flutter/material.dart';
import 'package:welcome/src/slides/sides_slide.dart';

enum WelcomeState {
  first,
  second,
  third,
  fourth,
  fiveth
}

class WelcomeSlide extends StatelessWidget {
  final WelcomeState state;

  const WelcomeSlide({Key key, this.state = WelcomeState.first}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideOnTheRight(
      rightChild: Scaffold(
        backgroundColor: Colors.white70,
        body: Column(
          children: <Widget>[
            isSecondState() || isThirdState() || isFourthState() || isFivethState() ?
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
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
                : Container(),

            isThirdState() || isFourthState() ?
            Padding(
                    padding: const EdgeInsets.only(top: 250),
                    child: Column(
                      children: <Widget>[
                        bodyLine(context,'Como crear una app para Android e IOS...', true),
                        bodyLine(context,'¡En 30 minutos!', true),
                        isFourthState() ?
                          bodyLine(context,'(O un poco mas 😜)', false)
                        : Container()
                      ],
                    ),
                  )
            : Container(),
            isFivethState() ?
            Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: Column(
                    children: <Widget>[
                      bodyLine(context, '¿Que es Flutter?', true),
                    ],
                  )
              )

                : Container()
          ],
        ),
      )
    );
  }

  Align bodyLine(BuildContext context, String text, bool applyStyle) {
    return Align(
            alignment: Alignment.bottomCenter,
            child: RichText(
              text: TextSpan(
                text: '',
                style: Theme.of(context).textTheme.display3,
                children: <TextSpan>[
                  TextSpan(
                      text: text,
                      style: applyStyle ? TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black87) : null),
                ],
              ),
            ),
          );
  }

  bool isSecondState() => state == WelcomeState.second;

  bool isThirdState() => state == WelcomeState.third;

  bool isFourthState() => state == WelcomeState.fourth;

  bool isFivethState() => state == WelcomeState.fiveth;
}