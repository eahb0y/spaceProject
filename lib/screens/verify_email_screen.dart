import 'package:flutter/material.dart';
import 'package:space_project/components/my_button.dart';
import 'package:space_project/components/my_textfield.dart';
import '../constants.dart';
import '../resources/resources.dart';

class VerifyEmailScreen extends StatelessWidget {
  final controller = TextEditingController();
  VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Container(
              constraints: const BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5),
                    BlendMode.darken,
                  ),
                  image: const AssetImage(Images.authPicture),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 25, 0, 5),
                        child: _BackButton(),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: padding,
                    child: Text(
                      'Forgot password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: padding,
                    child: Text(
                      'Enter e-mail below to reset password',
                      style: hintTextStyle,
                    ),
                  ),
                  MyTextField(
                    controller: controller,
                    hintText: 'E-mail',
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: padding,
                    child: Text(
                      'Once you click the button below, you will receive an e-mail with a link to reset your password. You will then be able to sing in to the app with your new password.',
                      style: describeTextStyle,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: MyButton(
                        onTab: () {
                          print("reset password");
                        },
                        label: 'Reset password',
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        iconSize: 30.0,
        color: Colors.white,
        icon: const Icon(
          Icons.arrow_back_ios,
        ));
  }
}
