import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttershopping/pages/login/login_screen.dart';
import 'package:fluttershopping/pages/sign_up/compontents/background.dart';
import 'package:fluttershopping/pages/sign_up/compontents/or_divider.dart';
import 'package:fluttershopping/pages/sign_up/compontents/social_icon.dart';
import 'package:fluttershopping/widgets/already_have_account_check.dart';
import 'package:fluttershopping/widgets/rounded_button.dart';
import 'package:fluttershopping/widgets/rounded_password_field.dart';

import '../../../utils/dimensions.dart';
import '../../../widgets/rounded_input_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "SIGN UP",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: Dimensions.screenHeight * 0.03,
        ),
        SvgPicture.asset("assets/icons/signup.svg",
            width: Dimensions.screenHeight * 0.3),
        RoundedInputField(onChanged: (value) {}),
        RoundedPasswordField(
          onChanged: (value) {},
        ),
        RoundedButton(
          text: "SIGN UP",
          press: () {},
        ),
        SizedBox(
          height: Dimensions.screenHeight * 0.03,
        ),
        AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            }),
        OrDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialIcon(
              iconSrc: "assets/icons/facebook.svg",
              press: () {},
            ),
            SocialIcon(
              iconSrc: "assets/icons/twitter.svg",
              press: () {},
            ),
            SocialIcon(
              iconSrc: "assets/icons/google-plus.svg",
              press: () {},
            )
          ],
        )
      ]),
    );
  }
}
