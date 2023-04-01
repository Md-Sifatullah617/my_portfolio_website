import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                children:   [
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
                  const Knowledge(),
                  const Divider(),
                  const SizedBox(height: defaultPadding/2,),
                  TextButton(onPressed: (){}, child: FittedBox(
                    child: Row(
                      children: [
                        Text('Download CV', style: TextStyle(color: Theme.of(context).textTheme.bodyLarge!.color),),
                        const SizedBox(width: defaultPadding/2,),
                        SvgPicture.asset("assets/icons/download.svg"),
                      ],
                    ),
                  )),
                  Container(
                    margin: const EdgeInsets.only(top: defaultPadding),
                    color: const Color(0xff24242e),
                    child: Row(
                      children: [
                        const Spacer(),
                        IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/linkedin.svg')),
                        IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/github.svg')),
                        IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/twitter.svg')),
                        const Spacer(),
                      ],
                    ),
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
        const AnimatedCodingSkill(
          codingSkill: 'Dart',
          percentage: 0.8,
        ),
        const AnimatedCodingSkill(
          codingSkill: 'C/C++',
          percentage: 0.75,
        ),
        const AnimatedCodingSkill(
          codingSkill: 'Python',
          percentage: 0.55,
        ),
        const AnimatedCodingSkill(
          codingSkill: 'HTML',
          percentage: 0.9,
        ),
        const AnimatedCodingSkill(
          codingSkill: 'CSS',
          percentage: 0.7,
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
