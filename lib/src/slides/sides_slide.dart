import 'package:flutter/material.dart';

class SlideOnTheRight extends StatelessWidget {
  final Widget rightChild;

  const SlideOnTheRight({Key key, this.rightChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
            children: <Widget>[
              Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Stack(
                    children: <Widget>[
                      Container(
                          color: Color(0xffed6103)
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 40, 180, 0),
                        child: Image.asset('assets/images/lifull_connect_logo_negative.png'),
                      )
                    ],
                  )
              ),
              MediaQuery.of(context).size.width > 1024 ?
                Flexible(
                    flex: 3,
                    fit: FlexFit.tight,
                    child: Container(color: Colors.white70, child: rightChild)
                )
                : Container()
            ],
        )
    );
  }
}

class TwoSidesSlide extends StatelessWidget {
  final Widget leftChild;
  final Widget rightChild;

  const TwoSidesSlide({Key key, this.leftChild, this.rightChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          children: <Widget>[
            // Left side
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Container(color: Colors.white, child: leftChild),
            ),
            MediaQuery.of(context).size.width > 1024
                ? Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Hero(
                      tag: 'right_background',
                      child: Container(
                        color: Colors.grey,
                      ),
                    ),
                    rightChild
                  ],
                ))
                : Container()
          ],
        ));
  }
}
