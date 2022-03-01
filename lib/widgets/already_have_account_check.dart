import 'package:flutter/material.dart';
import 'package:fluttershopping/utils/dimensions.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have an acount?" : "Already have an Account?",
          style: TextStyle(color: Colors.teal),
        ),
        SizedBox(
          width: Dimensions.width10 * 0.5,
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),
          ),
        )
      ],
    );
  }
}
