import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constents.dart';
import 'package:my_portfolio_website/home/homepage.dart';
import '../Components/banner.dart';
import '../Components/highlighted_text.dart';
import '../Components/projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyHomePage(children: [
      HOmeBanner(),
      SizedBox(
        height: defaultPadding,
      ),
      SectionHighlight(),
      SizedBox(
        height: defaultPadding,
      ),
      SectionProject()
    ]);
  }
}

