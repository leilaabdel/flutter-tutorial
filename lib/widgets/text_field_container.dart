import 'package:flutter/material.dart';
import 'package:fluttershopping/utils/dimensions.dart';

import '../utils/colors.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      width: Dimensions.screenWidth * 0.8,
      margin: EdgeInsets.symmetric(vertical: Dimensions.height10),
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.width20, vertical: Dimensions.width10 * 0.5),
      decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(Dimensions.radius30)),
    );
  }
}
