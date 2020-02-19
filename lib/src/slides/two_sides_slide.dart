import 'package:flutter/material.dart';

class TwoSidesSlide extends StatelessWidget {
  final Widget rightChild;

  const TwoSidesSlide({Key key, this.rightChild})
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
                        padding: EdgeInsets.fromLTRB(20, 40, 40, 0),
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
