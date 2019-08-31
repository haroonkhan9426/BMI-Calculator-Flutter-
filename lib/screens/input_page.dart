import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/custom_widgets/resuable_card.dart';

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
                icon: Icons.info,
                title: 'Male',
                color: inActiveCardColor,
              ),
              ReusableCard(
                icon: Icons.info,
                title: 'Female',
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
