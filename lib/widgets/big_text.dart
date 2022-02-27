import 'package:flutter/cupertino.dart';
import 'package:fluttershopping/utils/colors.dart';
import 'package:fluttershopping/utils/dimensions.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText(
      {Key? key,
      this.color = const Color(0xFF89dad0),
      required this.text,
      this.overFlow = TextOverflow.ellipsis,
      this.size = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        maxLines: 1,
        overflow: overFlow,
        style: TextStyle(
            color: color,
            fontWeight: FontWeight.w400,
            fontSize: size == 0 ? Dimensions.font20 : size,
            fontFamily: 'Roboto'));
  }
}
