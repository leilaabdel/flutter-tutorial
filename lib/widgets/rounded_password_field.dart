import 'package:flutter/material.dart';
import 'package:fluttershopping/widgets/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      onChanged: onChanged,
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Password",
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.teal,
          ),
          icon: Icon(
            Icons.lock,
            color: Colors.teal,
          ),
          border: InputBorder.none),
    ));
  }
}
