import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const textStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.white,
);

class GenderIconContent extends StatelessWidget {
  final IconData icon;
  final String title;

  GenderIconContent({this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          FontAwesomeIcons.mars,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text('Male', style: textStyle),
      ],
    );
  }
}
