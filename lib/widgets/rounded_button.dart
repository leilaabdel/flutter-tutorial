import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = Colors.teal,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimensions.height10),
      width: Dimensions.screenWidth * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Dimensions.radius30),
        child: TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  vertical: Dimensions.height20,
                  horizontal: Dimensions.width20 * 2),
              backgroundColor: color,
            ),
            onPressed: press,
            child: Text(
              text,
              style: TextStyle(color: textColor),
            )),
      ),
    );
  }
}
