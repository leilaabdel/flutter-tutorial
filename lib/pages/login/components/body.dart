import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttershopping/pages/login/components/background.dart';
import 'package:fluttershopping/pages/sign_up/sign_up_screen.dart';
import 'package:fluttershopping/utils/colors.dart';
import 'package:fluttershopping/utils/dimensions.dart';
import 'package:fluttershopping/widgets/rounded_button.dart';
import 'package:fluttershopping/widgets/text_field_container.dart';

import '../../../widgets/already_have_account_check.dart';
import '../../../widgets/rounded_input_field.dart';
import '../../../widgets/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "LOGIN",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: Dimensions.screenHeight * 0.03,
        ),
        SvgPicture.asset(
          "assets/icons/login.svg",
          width: Dimensions.screenHeight * .35,
        ),
        SizedBox(
          height: Dimensions.screenHeight * 0.03,
        ),
        RoundedInputField(hintText: "Your email", onChanged: (value) {}),
        RoundedPasswordField(
          onChanged: (value) {},
        ),
        RoundedButton(text: "LOGIN", press: () {}),
        SizedBox(
          height: Dimensions.screenHeight * 0.03,
        ),
        AlreadyHaveAnAccountCheck(
          press: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
        )
      ],
    ));
  }
}
