import 'package:flutter/material.dart';

import '../constents.dart';

class SectionHighlight extends StatelessWidget {
  const SectionHighlight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Highlights(
          value: 1000,
          valueNmae: 'Followers',
        ),
        Highlights(
          value: 5,
          valueNmae: 'Videos',
        ),
        Highlights(
          value: 20,
          valueNmae: 'Github Projects',
        ),
        Highlights(
          value: 54,
          valueNmae: 'Stars',
        ),
        SizedBox(height: defaultPadding,)
      ],
    );
  }
}

class Highlights extends StatelessWidget {
  const Highlights({
    super.key,
    required this.value,
    required this.valueNmae,
  });
  final int value;
  final String valueNmae;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TweenAnimationBuilder(
          tween: IntTween(begin: 0, end: value),
          duration: defaultDuration,
          builder: (BuildContext context, int value, Widget? child) => Text(
            "$value+",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: primaryColor),
          ),
        ),
        const SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          valueNmae,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
