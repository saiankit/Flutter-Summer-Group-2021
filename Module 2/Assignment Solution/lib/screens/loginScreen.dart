import 'package:flutter/material.dart';

import '/screens/greetingsScreen.dart';
import '/screens/registrationScreen.dart';
import '/utilities/styling.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final bitsIdController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // MediaQuery for screenSizes
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: screenSize.width * 0.90,
              height: screenSize.height * 0.20,
              child: Text(
                'CRUX FLUTTER SUMMER GROUP',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ThemeColors.primaryColor,
                  fontWeight: FontWeight.w800,
                  fontSize: 35,
                ),
              ),
            ),
            Container(
              width: screenSize.width * 0.90,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: screenSize.height * 0.04,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'ID Number',
                        ),
                      ),
                      TextFormField(
                        controller: bitsIdController,
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            labelText: 'Please enter your BITS ID Number'),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: screenSize.width * 0.90,
                    height: screenSize.width * 0.06,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: screenSize.height * 0.04,
                        alignment: Alignment.centerLeft,
                        child: Text('Password'),
                      ),
                      TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          filled: true,
                          labelText: 'Please enter your password',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  width: screenSize.width * 0.90,
                  height: screenSize.height * 0.08,
                  child: Card(
                    color: ThemeColors.primaryColor,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GreetingsScreen(
                              bitsIdNumber: bitsIdController.text,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'LOG IN',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: screenSize.width * 0.90,
                  height: screenSize.height * 0.04,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Forgot Password ?'),
                    style:
                        TextButton.styleFrom(primary: ThemeColors.primaryColor),
                  ),
                ),
              ],
            ),
            Container(
              width: screenSize.width * 0.9,
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Don\'t have an account'),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationScreen()),
                      );
                    },
                    child: Text('Register'),
                    style:
                        TextButton.styleFrom(primary: ThemeColors.primaryColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
