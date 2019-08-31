import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/custom_widgets/resuable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);
const bottomSheetColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: _renderBasicSkeleton(),
    );
  }

  Widget _renderBasicSkeleton() {
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              ReusableCard(
                color: inActiveCardColor,
                childWidget: new GenderIconContent(
                  icon: FontAwesomeIcons.mars,
                  title: 'MALE',
                ),
              ),
              ReusableCard(
                color: activeCardColor,
              ),
            ],
          ),
        ),
//        ReusableCard(),
        Expanded(
          child: Row(
            children: <Widget>[
//              ReusableCard(),
//              ReusableCard(),
            ],
          ),
        ),
      ],
    );
  }
}

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
        Text(
          'Male',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
