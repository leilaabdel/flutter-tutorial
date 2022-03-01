import 'package:flutter/material.dart';
import 'package:fluttershopping/pages/login/components/body.dart';
import 'package:fluttershopping/utils/dimensions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
