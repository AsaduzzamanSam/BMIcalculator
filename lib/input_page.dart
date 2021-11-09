import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';


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
