import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constents.dart';

import 'my_info.dart';

class NaveSideBar extends StatelessWidget {
  const NaveSideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  const BasicInfoText(
                    title: 'Residence',
                    text: 'Bangladesh',
                  ),
                  const BasicInfoText(
                    title: 'City',
                    text: 'Dhaka',
                  ),
                  const BasicInfoText(
                    title: 'Age',
                    text: '22',
                  ),
                  const Divider(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "Skills",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 1,
                        child: TweenAnimationBuilder(
                            tween: Tween<double>(begin: 0, end: 1),
                            duration: defaultDuration,
                            builder: (context, double value, child) =>
                                Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    CircularProgressIndicator(
                                      value: value,
                                      color: primaryColor,
                                      backgroundColor: darkColor,
                                    ),
                                    Center(child: Text("${value*100}%", style: Theme.of(context).textTheme.titleMedium,))
                                  ],
                                )),
                      ),
                      const SizedBox(height: defaultPadding/2,),
                      Text('Flutter', style: Theme.of(context).textTheme.titleSmall,)
                    ],
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

class BasicInfoText extends StatelessWidget {
  const BasicInfoText({
    super.key,
    required this.title,
    required this.text,
  });

  final String title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(color: colorWhite),
          ),
          Text(text)
        ],
      ),
    );
  }
}
