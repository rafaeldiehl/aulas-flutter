import 'package:flutter/material.dart';
import 'package:projetobase/aula08/classes/login_details.dart';

class LoginTextField extends StatefulWidget {
  const LoginTextField({
    super.key,
    required this.tipoLogin,
    required controller,
  }) : _controller = controller;

  final TextEditingController _controller;
  final TiposDeLogin tipoLogin;

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  var loginDetails = LoginDetails.loginDetails();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget._controller,
      decoration: InputDecoration(
        label: Text(loginDetails[widget.tipoLogin]!.label),
        hintText: loginDetails[widget.tipoLogin]!.hintText,
        border: const OutlineInputBorder(),
        prefixIcon: loginDetails[widget.tipoLogin]!.prefixIcon,
      ),
    );
  }
}
