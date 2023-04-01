import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../constents.dart';

class HOmeBanner extends StatelessWidget {
  const HOmeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 3,
        child: Stack(fit: StackFit.expand, children: [
          Image.asset(
            'assets/images/bg.jpeg',
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amaging \nArt Space!",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                DefaultTextStyle(
                  style: Theme.of(context).textTheme.titleMedium!,
                  child: Row(
                    children: [
                      const FlutterTextStyle(),
                      const SizedBox(
                        width: defaultPadding / 2,
                      ),
                      const Text('I build '),
                      AnimatedTextKit(repeatForever: true, animatedTexts: [
                        TyperAnimatedText("responsive web and mobile app.",
                            speed: const Duration(milliseconds: 60)),
                        TyperAnimatedText("scanner app with Firebase.",
                            speed: const Duration(milliseconds: 60)),
                        TyperAnimatedText("task management app with API.",
                            speed: const Duration(milliseconds: 60)),
                      ]),
                      const SizedBox(
                        width: defaultPadding / 2,
                      ),
                      const FlutterTextStyle(),
                    ],
                  ),
                ),
                const SizedBox(height: defaultPadding,),
                ElevatedButton(onPressed: () {}, style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding, horizontal: defaultPadding*2),
                  backgroundColor: primaryColor
                ),child: const Text("Explore Now", style: TextStyle(color: darkColor),))
              ],
            ),
          )
        ]));
  }
}

class FlutterTextStyle extends StatelessWidget {
  const FlutterTextStyle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(TextSpan(children: [
      TextSpan(text: "<"),
      TextSpan(text: 'flutter', style: TextStyle(color: primaryColor)),
      TextSpan(text: ">")
    ]));
  }
}
