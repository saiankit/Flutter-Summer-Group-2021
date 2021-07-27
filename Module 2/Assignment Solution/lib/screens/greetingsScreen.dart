import 'package:flutter/material.dart';

import '/utilities/styling.dart';

class GreetingsScreen extends StatefulWidget {
  final String bitsIdNumber;

  const GreetingsScreen({Key? key, required this.bitsIdNumber})
      : super(key: key);

  @override
  _GreetingsScreenState createState() => _GreetingsScreenState();
}

class _GreetingsScreenState extends State<GreetingsScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: [
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
                    height: screenSize.height * 0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text(
                            'welcomes You',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          child: Text(
                            widget.bitsIdNumber,
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.w800),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Have a great journey ahead !!',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
                          Navigator.pop(context);
                        },
                        child: Text(
                          'LOG OUT',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
