import 'package:flutter/material.dart';

import '../utils/constants.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const PasswordField({super.key, required this.controller, this.validator});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

IconData getIconByObscured(bool obscured) {
  return obscured ? Icons.visibility : Icons.visibility_off;
}

class _PasswordFieldState extends State<PasswordField> {
  late bool obscured;
  late IconData icon;

  void toggleObscured() {
    setState(() {
      obscured = !obscured;
      icon = getIconByObscured(obscured);
    });
  }

  @override
  void initState() {
    obscured = true;
    icon = getIconByObscured(obscured);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: obscured,
      style: TextStyles.body,
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          suffixIcon: IconButton(
        icon: Icon(icon),
        onPressed: toggleObscured,
      )),
    );
  }
}
