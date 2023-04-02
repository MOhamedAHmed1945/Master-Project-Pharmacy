import 'package:flutter/material.dart';
import 'package:graduation/components/text/text_button.dart';
import '../../components/text/text_form_field.dart';
import 'forgotten_password_screen.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({Key? key}) : super(key: key);
  static const String forgetScreenRoute = 'forget screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Enter Your Email',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 10.0,
                            color: Colors.lightBlue[900]!,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ReusableTextFormField(
                    text: 'Email',
                    prefix: Icon(Icons.email),
                    textInputType: TextInputType.emailAddress,
                  ),
                  ReusableTextFormField(
                    text: 'Phone Number',
                    prefix: Icon(Icons.phone_android_rounded),
                    textInputType: TextInputType.number,
                  ),
                  ReusableTextFormField(
                    text: 'ID Cart',
                    prefix: Icon(Icons.credit_card_sharp),
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  ReusableTextButton(
                    color: Colors.blue[900]!,
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context,
                          ForgottenPasswordScreen.forgottenPasswordScreenRoute,
                          (Route<dynamic> route) => false);
                    },
                    text: 'Send To Email',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
