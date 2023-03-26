import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constents.dart';

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
              Expanded(
                flex: 2,
                child: Drawer(
                  child: Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 1.23,
                        child: Container(
                          color: const Color(0xff242430),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Spacer(flex: 2,),
                              const CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage("/images/pp.jpg"),
                              ),
                              Text('Md. Sifatullah', style: Theme.of(context).textTheme.subtitle2,),
                              const Text('Flutter Developer & Founder of\nThe Flutter Way', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
                              ),
                              const Spacer(flex: 2,),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  color: colorBlue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
