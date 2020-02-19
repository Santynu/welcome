import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

enum FirstSlideState { first, second, third, fourth }

class FirstSlide extends StatelessWidget {
  final FirstSlideState state;

  const FirstSlide({Key key, this.state = FirstSlideState.first})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        body: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Hero(
                        tag: 'logo',
                        child: SizedBox(
                          height: 200,
                          child: Image.asset('assets/images/lifull_connect_logo.png'),/*FlareActor("assets/images/lifull_connect_logo.png", snapToEnd: true, isPaused: true, animation: "transform"),*/
                        ),
                      ),
                      isFirst() || isSecondState() || isThirdState() ?
                      RichText(
                        text: TextSpan(
                          text: 'Lifull Connect Talks ',
                          style: TextStyle(fontSize: 60, fontWeight: FontWeight.w600, color: Colors.black87),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'presenta...',
                                style: Theme.of(context).textTheme.display3),
                          ],
                        ),
                      ) : Container(),
                      SizedBox(height: 20),
                      isSecondState() || isThirdState()
                          ? RichText(
                              text: TextSpan(
                                text: '',
                                style: Theme.of(context).textTheme.display3,
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Como crear una app para Android e IOS...',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black87)),
                                  TextSpan(
                                      text: '¡En 30 minutos!',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black87)),
                                ],
                              ),
                            )
                          : Container(),
                      isThirdState()
                          ? RichText(
                        text: TextSpan(
                          text: '',
                          style: Theme.of(context).textTheme.display3,
                          children: <TextSpan>[
                            TextSpan(text: ' (O un poco mas 😜)'),
                          ],
                        ),
                      )
                          : Container(),
                      isFourthState() ?
                      RichText(
                          text: TextSpan(
                            text: '',
                            style: Theme.of(context).textTheme.display3,
                            children: <TextSpan>[
                              TextSpan(
                                  text: '¿Que es Flutter?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87)),
                            ],
                          ),
                        )
                          : Container(),
                      SizedBox(height: 200)
                    ],
                  ),
                ),
                Hero(tag: 'right_background', child: Container(height: double.infinity))
              ],
            )
        )
    );
  }

  bool isFirst() => state == FirstSlideState.first;

  bool isSecondState() => state == FirstSlideState.second;

  bool isThirdState() => state == FirstSlideState.third;

  bool isFourthState() => state == FirstSlideState.fourth;
}
