import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constents.dart';

import '../Components/side_bar.dart';

class MyHomePage extends StatelessWidget {
   const MyHomePage({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 2,
                child: NaveSideBar(),
              ),
              const SizedBox(width: defaultPadding,),
              Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...children
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
