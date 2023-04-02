import 'package:flutter/material.dart';
import 'package:graduation/components/text/text_button.dart';
import 'package:graduation/components/text/text_form_field.dart';
import 'login_screen.dart';

class ForgottenPasswordScreen extends StatelessWidget {
  const ForgottenPasswordScreen({Key? key}) : super(key: key);
  static const String forgottenPasswordScreenRoute = 'forgotten Password screen';

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
                          'Password Recovery',
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
                    text: 'Enter The Password Sent',
                    prefix: Icon(Icons.password),
                    textInputType: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  ReusableTextButton(
                    color: Colors.blue[900]!,
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context,
                          LoginScreen.loginScreenRoute,
                          (Route<dynamic> route) => false);
                    },
                    text: 'LOGIN',
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
