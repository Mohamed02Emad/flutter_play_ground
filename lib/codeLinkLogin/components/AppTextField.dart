import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  var _isPassword = false;
  var _hint = "";
  TextEditingController _fieldController = TextEditingController();

  AppTextField(
      {super.key,
      required TextEditingController controller,
      String hint = "",
      bool isPassword = false}) {
    _hint = hint;
    _isPassword = isPassword;
    _fieldController = controller;
  }

  @override
  State<AppTextField> createState() => _AppTextFieldState(
      controller: _fieldController, hint: _hint, isPassword: _isPassword);
}

class _AppTextFieldState extends State<AppTextField> {
  var _isPassword = false;
  var _hint = "";
  TextEditingController _fieldController = TextEditingController();
  bool _isPasswordVisible = false;

  _AppTextFieldState(
      {required TextEditingController controller,
      String hint = "",
      bool isPassword = false}) {
    _hint = hint;
    _isPassword = isPassword;
    _fieldController = controller;
  }

  @override
  Widget build(BuildContext context) {
    if (_isPassword) {
      return passwordTextField(fieldController: _fieldController, hint: _hint);
    } else {
      return normalTextField(
          fieldController: _fieldController,
          hint: _hint,
          isPassword: _isPassword);
    }
  }

  Widget passwordTextField({
    required TextEditingController fieldController,
    String hint = "",
  }) {
    return Container(
      margin: const EdgeInsets.only(left: 12, right: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[400]!,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: TextField(
        controller: fieldController,
        obscureText: !_isPasswordVisible,
        decoration: InputDecoration(
          hintText: hint,
          icon: const Icon(Icons.lock),
          iconColor: Colors.grey[400],
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _isPasswordVisible = !_isPasswordVisible;
              });
            },
            child: Icon(
              _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey[400],
            ),
          ),
        ),
        cursorColor: Colors.grey[400],
      ),
    );
  }

  Widget normalTextField({
    required TextEditingController fieldController,
    String hint = "",
    bool isPassword = false,
  }) {
    return Container(
      margin: const EdgeInsets.only(left: 12, right: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[400]!,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: TextField(
        controller: fieldController,
        decoration: InputDecoration(
          hintText: hint,
          icon: const Icon(Icons.email),
          iconColor: Colors.grey[400],
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
        cursorColor: Colors.grey[400],
      ),
    );
  }
}
