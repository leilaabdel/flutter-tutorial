import 'package:flutter/material.dart';
import 'package:fluttershopping/utils/dimensions.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: Dimensions.screenHeight,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                left: 0,
                top: 0,
                child: Image.asset(
                  "assets/image/main_top.png",
                  width: Dimensions.screenWidth * 0.3,
                )),
            Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset(
                  "assets/image/login_bottom.png",
                  width: Dimensions.screenWidth * 0.4,
                )),
            child
          ],
        ));
  }
}
