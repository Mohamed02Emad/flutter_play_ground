import 'package:flutter/material.dart';
import 'package:flutter_play_ground/codeLinkLogin/components/AppButton.dart';
import 'package:flutter_play_ground/codeLinkLogin/components/AppTextField.dart';
import 'package:flutter_play_ground/codeLinkLogin/components/VerticalSpacer.dart';

import 'components/SvgImage.dart';

class CodeLinkLogin extends StatelessWidget {
  const CodeLinkLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const LoginScreen(title: 'Code Link Login Screen'),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.title});

  final String title;

  @override
  State<LoginScreen> createState() => _LoginScreenUi();
}

class _LoginScreenUi extends State<LoginScreen> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          VerticalSpacer(space: 50),
          SvgImage(
            height: 200,
            width: 200,
            svgName: "login_image",
          ),
          VerticalSpacer(space: 20),
          loginScreenText(text: "Welcome Back !"),
          VerticalSpacer(space: 20),
          AppTextField(
            controller: emailController,
            hint: "Email",
          ),
          VerticalSpacer(space: 20),
          AppTextField(
            controller: passwordController,
            hint: "Password",
            isPassword: true,
          ),
          VerticalSpacer(space: 100),
          AppButton(email: emailController)
        ],
      ),
    );
  }

  Widget loginScreenText({String text = ""}) {
    return Container(
        width: double.infinity,
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(left: 12),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ));
  }
}
