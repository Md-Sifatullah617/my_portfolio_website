import 'package:flutter/material.dart';
import 'package:my_portfolio_website/homepage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyHomePage(children: [
      AspectRatio(aspectRatio: 3, child: Image.asset('assets/images/bg.jpeg', fit: BoxFit.cover,))
    ]);
  }
}
