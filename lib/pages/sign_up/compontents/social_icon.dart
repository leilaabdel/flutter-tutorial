import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/colors.dart';
import '../../../utils/dimensions.dart';

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final VoidCallback press;

  const SocialIcon({
    Key? key,
    required this.iconSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: Dimensions.width10),
        padding: EdgeInsets.all(Dimensions.width20),
        decoration: BoxDecoration(
            border: Border.all(
                width: Dimensions.height10 * 0.2, color: AppColors.mainColor),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          iconSrc,
          height: Dimensions.height20,
          width: Dimensions.width20,
          color: Colors.teal,
        ),
      ),
    );
  }
}
