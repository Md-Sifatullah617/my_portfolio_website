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
                  const Skills(),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  const Coding(),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const AnimatedCodingSkill(codingSkill: 'Dart', percentage: 0.8,),
        const AnimatedCodingSkill(codingSkill: 'C/C++', percentage: 0.75,),
        const AnimatedCodingSkill(codingSkill: 'Python', percentage: 0.55,),
        const AnimatedCodingSkill(codingSkill: 'HTML', percentage: 0.9,),
        const AnimatedCodingSkill(codingSkill: 'CSS', percentage: 0.7,)
      ],
    );
  }
}

class AnimatedCodingSkill extends StatelessWidget {
  const AnimatedCodingSkill({
    super.key, required this.codingSkill, required this.percentage,
  });
  final String codingSkill;
  final double percentage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: percentage),
          duration: defaultDuration,
          builder: (context, double value, child) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(codingSkill, style: const TextStyle(color: colorWhite),),
                  Text('${(value*100).toInt()}%')
                ],
              ),
              const SizedBox(height: defaultPadding/2,),
              LinearProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
            ],
          )),
    );
  }
}

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
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
              label: 'API',
              percentage: 0.6,
            )),
          ],
        )
      ],
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
