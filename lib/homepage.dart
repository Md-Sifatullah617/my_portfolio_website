import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constents.dart';

import 'Components/side_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              const Expanded(
                flex: 2,
                child: NaveSideBar(),
              ),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                    child: Column(
                        children: [
                            
                        ],
                    ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}


