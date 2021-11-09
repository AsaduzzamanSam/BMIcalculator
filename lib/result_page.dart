import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottomButton.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("BMI Calculator")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text(
                  "Your Result",
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column( crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                    Text("OVERWEIGHT", style: kResultTextStyle,),
                      Text("26.7",style: kBMITextStyle,),
                      Text("You have a higher than normal body weight. try to exercise more.",textAlign: TextAlign.center,style: kBodyTextStyle,)
                      
                  ],),
                  onPress: () {}),
            ),
            BottomButton(onPress: (){
              Navigator.pop(context);
            }, bottomTitle: "RE_CALCULATE")
          ],
        ));
  }
}
