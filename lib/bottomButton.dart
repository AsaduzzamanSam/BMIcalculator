import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onPress, required this.bottomTitle});

  final String bottomTitle;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
            child: Text(
              bottomTitle,
              style: kLargeButtonTextStyle,
            )),
        margin: EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          color: kBottomContainerColor,
        ),
        height: kBottomButtonHeight,
        width: double.infinity,
      ),
    );
  }
}