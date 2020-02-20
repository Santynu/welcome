import 'package:flutter/material.dart';
import 'package:welcome/src/slides/sides_slide.dart';

enum WelcomeState {
  first,
  second,
  third
}

class WelcomeSlide extends StatelessWidget {
  final WelcomeState state;

  const WelcomeSlide({Key key, this.state = WelcomeState.first}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideOnTheRight(
      rightChild: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 27, 0, 0),
              child: RichText(
                text: TextSpan(
                  text: '',
                  children: buildChildren(),
                ),
              ),
            ),
            Image.asset('assets/images/flutter_background.png'),
          ],
        ),
      )
    );
  }

  List<TextSpan> buildChildren() {
    List<TextSpan> textSpanList = List();

    if (isFirstState() || isSecondState()) {
      textSpanList.add(buildTextSpan(text: 'Cómo ', isBold: false));
      textSpanList.add(buildTextSpan(text: 'crear una APP\n', isBold: true));
      textSpanList.add(buildTextSpan(text: 'en ', isBold: false));
      textSpanList.add(buildTextSpan(text: 'Android ', isBold: true));
      textSpanList.add(buildTextSpan(text: 'e ', isBold: false));
      textSpanList.add(buildTextSpan(text: 'iOS\n', isBold: true));
      textSpanList.add(buildTextSpan(text: '¡En ', isBold: false));
      textSpanList.add(buildTextSpan(text: '30 minutos!\n', isBold: true));
    }

    if (isSecondState()){
      textSpanList.add(buildTextSpan(text: '(O un poco mas 😜)', isBold: false));

  }
    if(isThirdState()) {
      textSpanList.add(buildTextSpan(text: '¿Que es ', isBold: false));
      textSpanList.add(buildTextSpan(text: 'Flutter', isBold: true));
      textSpanList.add(buildTextSpan(text: '?', isBold: false));
    }

    return textSpanList;

  }

  TextSpan buildTextSpan({String text, bool isBold}) {
    return TextSpan(
              text: text,
              style: TextStyle(fontSize: 35, fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,fontFamily: 'GoogleSans', color: Colors.black),
           );
  }

  bool isFirstState() => state == WelcomeState.first;

  bool isSecondState() => state == WelcomeState.second;

  bool isThirdState() => state == WelcomeState.third;
}