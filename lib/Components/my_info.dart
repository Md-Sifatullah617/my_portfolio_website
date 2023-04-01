import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constents.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xff242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(
              flex: 2,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/pp.jpg"),
            ),
            const Spacer(),
            Text(
              'Md. Sifatullah',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Text(
              'Flutter Developer & Founder of\nesuIT',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedCircularSkill extends StatelessWidget {
  const AnimatedCircularSkill({
    super.key,
    required this.label,
    required this.percentage,
  });
  final String label;
  final double percentage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: percentage),
              duration: defaultDuration,
              builder: (context, double value, child) => Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                        value: value,
                        color: primaryColor,
                        backgroundColor: darkColor,
                      ),
                      Center(
                          child: Text(
                        "${(value * 100).toInt()}%",
                        style: Theme.of(context).textTheme.titleMedium,
                      ))
                    ],
                  )),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}

class AnimatedCodingSkill extends StatelessWidget {
  const AnimatedCodingSkill({
    super.key,
    required this.codingSkill,
    required this.percentage,
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
                      Text(
                        codingSkill,
                        style: const TextStyle(color: colorWhite),
                      ),
                      Text('${(value * 100).toInt()}%')
                    ],
                  ),
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
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

class Knowledge extends StatelessWidget {
  const Knowledge({
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
            'Knowledge\'s',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const DetailsKNDG(
          text: 'Flutter, Dart',
        ),
        const DetailsKNDG(
          text: 'Git Knowledge',
        ),
        const DetailsKNDG(
          text: 'Web Development',
        ),
        const DetailsKNDG(
          text: 'Video Editing',
        ),
        const DetailsKNDG(
          text: 'Programming',
        ),
      ],
    );
  }
}

class DetailsKNDG extends StatelessWidget {
  const DetailsKNDG({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          const SizedBox(
            width: defaultPadding / 2,
          ),
          Text(text)
        ],
      ),
    );
  }
}
