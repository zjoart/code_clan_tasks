//A signin oboarding page

import 'package:code_clan_second_tasks/helpers.dart/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FourthTasks extends StatelessWidget {
  const FourthTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Image.asset(hands),
            ),
            const SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Growing Your business is ',
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'easier ',
                      style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                    TextSpan(
                      text: 'then you think!',
                      style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Sign up takes only 2 minutes',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade400),
            ),
            const SizedBox(height: 100),
            ButtonWidget(
              press: () {},
              text: 'Get Started',
              color: Colors.black,
              textcolor: Colors.white,
            ),
            const SizedBox(height: 20),
            ButtonWidget(
              press: () {},
              text: 'Sign in',
              color: Colors.grey.shade100,
              textcolor: Colors.black,
            ),
          ],
        ));
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.press,
    required this.text,
    required this.color,
    required this.textcolor,
  }) : super(key: key);

  final Function() press;
  final String text;
  final Color color;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: (MediaQuery.of(context).size.width / 100) * 90,
        height: 50,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(7)),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: textcolor),
        ),
      ),
    );
  }
}
