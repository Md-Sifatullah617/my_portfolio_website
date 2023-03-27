import 'package:flutter/material.dart';

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
            const Spacer(flex: 2,),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("/images/pp.jpg"),
            ),
            const Spacer(),
            Text('Md. Sifatullah', style: Theme.of(context).textTheme.titleSmall,),
            const Text('Flutter Developer & Founder of\nesuIT', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            const Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}

class AnimatedCircularSkill extends StatelessWidget {
  const AnimatedCircularSkill({
    super.key, required this.label, required this.percentage,
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
                          "${(value*100).toInt()}%",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium,
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