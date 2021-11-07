import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomButtonHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
enum genderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

   genderType selectedGender = genderType.male;
  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  //
  // void updateColor(genderType gender) {
  //   gender == genderType.male && maleCardColor == inactiveCardColor
  //       ? maleCardColor = activeCardColor
  //       : maleCardColor = inactiveCardColor;
  //   gender == genderType.female && femaleCardColor == inactiveCardColor
  //       ? femaleCardColor = activeCardColor
  //       : femaleCardColor = inactiveCardColor;
  //
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender = genderType.male;
                      });
                    },
                    colour: selectedGender == genderType.male ? activeCardColor : inactiveCardColor ,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender = genderType.female;
                      });
                    },
                    colour:selectedGender == genderType.female ? activeCardColor : inactiveCardColor ,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPress: (){},
              colour: activeCardColor,
              cardChild: Column(),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(

                  child: ReusableCard(
                    onPress: (){},
                    colour: activeCardColor,
                    cardChild: Column(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: (){},
                    colour: activeCardColor,
                    cardChild: Column(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            decoration: BoxDecoration(
              color: bottomContainerColor,
            ),
            height: bottomButtonHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
