import 'package:flutter/material.dart';
import 'package:space_project/components/my_button.dart';
import 'package:space_project/screens/verify_email_screen.dart';

import '../components/my_textfield.dart';
import '../resources/resources.dart';

class AuthScreenWidget extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  AuthScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
          image: const AssetImage(Images.authPicture),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(125, 80, 125, 25),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(Images.cLogoIcon),
            ),
          ),
          MyTextField(
            controller: usernameController,
            hintText: 'E-mail',
            obscureText: false,
          ),
          const SizedBox(
            height: 25,
          ),
          MyTextField(
            controller: passwordController,
            hintText: 'Password',
            obscureText: true,
          ),
          const SizedBox(
            height: 25,
          ),
          const ForgotPasswordWidgetButton(),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: MyButton(
                label: 'Sign in',
                onTab: () {
                  print("Sign in");
                },
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class ForgotPasswordWidgetButton extends StatelessWidget {
  const ForgotPasswordWidgetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VerifyEmailScreen(),
            ),
          );
        },
        child: const Text(
          "Forgot your password?",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ));
  }
}
