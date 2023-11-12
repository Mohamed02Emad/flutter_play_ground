import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  bool isPasswordVisible = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          verticalSpace(space: 50),
          loginImage(),
          verticalSpace(space: 20),
          loginScreenText(text: "Welcome Back !"),
          verticalSpace(space: 20),
          loginScreenTextField(
            fieldController: emailController,
            hint: "Email",
          ),
          verticalSpace(space: 20),
          loginScreenTextField(
            fieldController: passwordController,
            hint: "Password",
            isPassword: true,
          ),
          verticalSpace(space: 100),
          loadingButton()
        ],
      ),
    );
  }

  Widget loginImage() {
    return Center(
      child: SizedBox(
        width: 200,
        height: 200,
        child: SvgPicture.asset(
          'assets/images/login_image.svg',
          semanticsLabel: 'Login Image',
          width: 200,
          height: 200,
        ),
      ),
    );
  }

  Widget verticalSpace({double space = 20}) {
    return SizedBox(
      width: 0,
      height: space,
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

  Widget loginScreenTextField({
    required TextEditingController fieldController,
    String hint = "",
    bool isPassword = false,
  }) {
    if (isPassword) {
      return passwordTextField(fieldController: fieldController, hint: hint);
    } else {
      return normalTextField(
          fieldController: fieldController, hint: hint, isPassword: isPassword);
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
        obscureText: !isPasswordVisible,
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
                isPasswordVisible = !isPasswordVisible;
              });
            },
            child: Icon(
              isPasswordVisible ? Icons.visibility : Icons.visibility_off,
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

  Widget loadingButton() {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: SizedBox(
        width: 150.0,
        height: 45.0,
        child: ElevatedButton(
          onPressed: () {
            toggleLoading();
            showSnackbar();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 217, 198, 164),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          child: getButtonContent(),
        ),
      ),
    );
  }

  void toggleLoading() {
    setState(() {
      isLoading = !isLoading;
    });
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        isLoading = !isLoading;
      });
    });
  }

  Widget getButtonContent() {
    if (isLoading) {
      return const SizedBox(
        width: 20.0,
        height: 20.0,
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      );
    } else {
      return const Text("Login");
    }
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar( SnackBar(
      content: Text(emailController.text),

    ));
  }
}
