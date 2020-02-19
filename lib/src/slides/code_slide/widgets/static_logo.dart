

import 'package:flutter/material.dart';

class StaticLogo extends StatelessWidget {
  final double width;

  const StaticLogo({Key key, this.width}) : super(key: key);

  const StaticLogo.small({Key key})
      : width = 500,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: 'logoLeft',
        child: Image.asset(
          'assets/images/lifull_connect_logo.png',
          width: width,
        ));
  }
}