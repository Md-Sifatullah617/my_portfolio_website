import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constents.dart';
import 'package:my_portfolio_website/home/homepage.dart';
import 'package:my_portfolio_website/recomandation.dart';
import '../Components/banner.dart';
import '../Components/highlighted_text.dart';
import '../Components/projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyHomePage(children: [
      HOmeBanner(),
      SizedBox(
        height: defaultPadding,
      ),
      SectionHighlight(),
      SizedBox(
        height: defaultPadding,
      ),
      SectionProject(),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Recommendation',
                style: Theme.of(context).textTheme.titleLarge),
            SizedBox(
              height: defaultPadding,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      demoRecommendation.length,
                      (index) => Padding(
                            padding:
                                const EdgeInsets.only(right: defaultPadding),
                            child: RecommendationCard(recomendation: demoRecommendation[index],),
                          ))),
            )
          ],
        ),
      )
    ]);
  }
}

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key, required this.recomendation,
  });
  final Recomendation recomendation;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(children: [
        Text(
          recomendation.name!,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(recomendation.source!),
        SizedBox(
          height: defaultPadding,
        ),
        Text(
          recomendation.text!,
          style: TextStyle(height: 1.5),
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),
      ]),
    );
  }
}
