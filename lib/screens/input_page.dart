import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/custom_widgets/resuable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator_flutter/custom_widgets/gender_icon_content.dart';

enum Gender { male, female, none }

const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);
const bottomSheetColor = Color(0xFFEB1555);
Gender selectedGender = Gender.none;

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
                color: (selectedGender == Gender.male) ? activeCardColor : inActiveCardColor,
                childWidget: GenderIconContent(
                  icon: FontAwesomeIcons.mars,
                  title: 'MALE',
                ),
                onPressed: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
              ),
              ReusableCard(
                color: (selectedGender == Gender.female) ? activeCardColor : inActiveCardColor,
                childWidget: GenderIconContent(
                  icon: FontAwesomeIcons.mars,
                  title: 'FEMALE',
                ),
                onPressed: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
              ),
            ],
          ),
        ),
        ReusableCard(
          color: activeCardColor,
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              ReusableCard(
                color: activeCardColor,
              ),
              ReusableCard(
                color: activeCardColor,
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 80.0,
          color: bottomSheetColor,
        )
      ],
    );
  }
}
