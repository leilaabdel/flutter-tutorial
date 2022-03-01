import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttershopping/pages/login/login_screen.dart';
import 'package:fluttershopping/pages/sign_up/sign_up_screen.dart';
import 'package:fluttershopping/pages/welcome/components/background.dart';
import 'package:fluttershopping/utils/colors.dart';
import 'package:fluttershopping/utils/dimensions.dart';

import '../../../widgets/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Welcome to Quranory",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: Dimensions.screenHeight * 0.03,
          ),
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: Dimensions.screenHeight * 0.45,
          ),
          SizedBox(
            height: Dimensions.screenHeight * 0.05,
          ),
          RoundedButton(
            text: "LOGIN",
            color: AppColors.mainColor,
            textColor: Colors.black,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
          RoundedButton(
            text: "SIGN UP",
            color: Colors.teal,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()));
            },
          )
        ],
      ),
    ));
  }
}
