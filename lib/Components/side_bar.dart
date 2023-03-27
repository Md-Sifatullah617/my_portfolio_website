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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding),
                        child: Text(
                          "Skills",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      Row(
                        children: const [
                          Expanded(
                              child: AnimatedCircularSkill(
                            label: 'Flutter',
                            percentage: 0.8,
                          )),
                          SizedBox(
                            width: defaultPadding,
                          ),
                          Expanded(
                              child: AnimatedCircularSkill(
                            label: 'Firebase',
                            percentage: 0.75,
                          )),
                          SizedBox(
                            width: defaultPadding,
                          ),
                          Expanded(
                              child: AnimatedCircularSkill(
                            label: 'C/C++',
                            percentage: 0.6,
                          )),
                        ],
                      )
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
