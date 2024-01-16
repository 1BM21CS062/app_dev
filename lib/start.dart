import 'package:flutter/material.dart';
import 'package:untitled/login.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  _StartState createState() =>_StartState();}
class _StartState extends State<Start>{
  @override
  Widget build(BuildContext context) {
    return
        // Figma Flutter Generator OpeningpageWidget - FRAME
      Container(
        width: 360,
        height: 800,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 300,
              left:40 ,
              child: GestureDetector(
                onTap: () {
                  // Navigate to the desired page when the text is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyLogin(),
                    ),
                  );
                },
                child: const Text(
                  'HELLO MOBILES',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(50, 59, 108, 1),
                    fontFamily:'ROG Fonts',
                    fontSize: 50,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}
