import 'dart:ui';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:demo/MainPage.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('images/Happy.jpg'),
            GradientText(
              'Welcome to My First App',
              style: TextStyle(
                fontSize: 40.0,
              ),
              colors: [
                Colors.blue,
                Colors.red,
                Colors.teal,
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(_createRoute());
              },
              child: const Text('Lets Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => MainPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
