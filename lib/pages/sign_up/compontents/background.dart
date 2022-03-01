import 'package:flutter/material.dart';
import 'package:fluttershopping/utils/dimensions.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Dimensions.screenHeight,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  "assets/image/signup_top.png",
                  width: Dimensions.screenWidth * 0.3,
                )),
            Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset(
                  "assets/image/main_bottom.png",
                  width: Dimensions.screenWidth * 0.3,
                )),
            child
          ],
        ));
  }
}
