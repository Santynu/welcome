import 'package:flutter/material.dart';
import 'package:flutter_keynote/flutter_keynote.dart';
import 'package:welcome/src/slides/code_slide/code_slide.dart';

import 'package:welcome/src/slides/made_with_flutter_slide.dart';
import 'package:welcome/src/slides/welcome_slide.dart';

const List<Widget> slides = [
  WelcomeSlide(state: WelcomeState.first),
  WelcomeSlide(state: WelcomeState.second),
  WelcomeSlide(state: WelcomeState.third),
  WelcomeSlide(state: WelcomeState.fourth),
  WelcomeSlide(state: WelcomeState.fiveth),
  CodeSlide(state: CodeState.material),
  CodeSlide(state: CodeState.logo),
  CodeSlide(state: CodeState.santi),
  CodeSlide(state: CodeState.meetup),
  CodeSlide(state: CodeState.web),
  CodeSlide(state: CodeState.twitter),
  CodeSlide(state: CodeState.telegram),
  CodeSlide(state: CodeState.gmail),
  CodeSlide(state: CodeState.github),
  CodeSlide(state: CodeState.members),
  MadeWithFlutterSlide()
];
 
class WelcomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return KeynoteApp(
      title: 'Welcome to Lifull Talks! Today supportes by Flutter Madrid',
      theme: ThemeData(
        textTheme: TextTheme(
          display1: TextStyle(
            color: Color(0xFF0175c2),
            fontFamily: 'GoogleSans',
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
          display2: TextStyle(
            color: Color(0xFF60646b),
            fontFamily: 'GoogleSans',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          body2: TextStyle(
            color: Colors.white,
            fontFamily: 'GoogleSans',
            fontSize: 20.0
          ),
          caption: TextStyle(
            color: Color(0xFF202124),
            fontFamily: 'GoogleSans',
            fontSize: 18.0
          )
        )
      ),
      slides: slides
    );
  }
}