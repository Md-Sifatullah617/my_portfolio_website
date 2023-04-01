import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constents.dart';
import 'package:my_portfolio_website/homepage.dart';

import '../Components/banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyHomePage(children: [
      HOmeBanner()
    ]);
  }
}

