import 'package:flutter/material.dart';
import 'package:graduation/components/text/text_button.dart';
import 'package:graduation/components/text/text_form_field.dart';
import 'login_screen.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static const String registerScreenRoute = 'register screen';

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
                          'Create Your Account',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 12.5,
                            color: Colors.lightBlue[900]!,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ReusableTextFormField(
                    text: 'User name',
                    prefix: Icon(Icons.person),
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  ReusableTextFormField(
                    text: 'Email',
                    prefix: Icon(Icons.email),
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  ReusableTextFormField(
                    text: 'Phone Number',
                    prefix: Icon(Icons.phone_android_rounded),
                    textInputType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  ReusableTextFormField(
                    text: 'ID Cart',
                    prefix: Icon(Icons.credit_card_sharp),
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  ReusableTextFormField(
                    text: 'Password',
                    prefix: Icon(Icons.lock),
                    textInputType: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ReusableTextButton(
                    color: Colors.blue[900]!,
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context,
                          LoginScreen.loginScreenRoute,
                          (Route<dynamic> route) => false);
                    },
                    text: 'REGISTER',
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
