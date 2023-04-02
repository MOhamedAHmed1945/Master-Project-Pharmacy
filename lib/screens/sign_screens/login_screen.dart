import 'package:flutter/material.dart';
import 'package:graduation/components/text/text_button.dart';
import 'package:graduation/components/text/text_form_field.dart';
import 'package:graduation/screens/home_screen.dart';
import 'package:graduation/screens/sign_screens/register_screen.dart';
import 'forget_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String loginScreenRoute = 'login screen';

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
                          'Hello ... !',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 10,
                            color: Colors.lightBlue[900]!,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Enter Your Account To Login',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 17.5,
                            color: Colors.blue[900]!,
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
                    text: 'Password',
                    prefix: Icon(Icons.lock),
                    suffix: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye),
                    ),
                    textInputType: TextInputType.visiblePassword,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context,
                          ForgetScreen.forgetScreenRoute,
                          (Route<dynamic> route) => false);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'FORGET?',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ReusableTextButton(
                    color: Colors.lightBlue[900]!,
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context,
                          HomeScreen.homeScreenRoute, (route) => false);
                    },
                    text: 'LOGIN',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "If you don't have account please,",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context,
                              RegisterScreen.registerScreenRoute,
                              (Route<dynamic> route) => false);
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
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
