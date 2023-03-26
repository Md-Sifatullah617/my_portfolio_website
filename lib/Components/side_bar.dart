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
              child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: const [
                BasicInfoText(
                  title: 'Residence',
                  text: 'Bangladesh',
                ),
                BasicInfoText(
                  title: 'City',
                  text: 'Dhaka',
                ),
                BasicInfoText(
                  title: 'Age',
                  text: '22',
                ),
              ],
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
