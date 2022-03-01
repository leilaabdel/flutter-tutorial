import 'package:flutter/material.dart';
import 'package:fluttershopping/utils/dimensions.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimensions.height10),
      width: Dimensions.screenWidth * 0.8,
      child: Row(children: [
        buildDivider(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.height10 * 0.8),
          child: Text(
            "OR",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.teal),
          ),
        ),
        buildDivider(),
      ]),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: Colors.black26,
        height: 1.5,
      ),
    );
  }
}
