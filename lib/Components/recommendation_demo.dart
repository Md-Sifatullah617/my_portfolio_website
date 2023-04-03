import 'package:flutter/material.dart';

import '../constents.dart';
import '../recomandation.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recommendation',
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(
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
    );
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
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(children: [
        Text(
          recomendation.name!,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(recomendation.source!),
        const SizedBox(
          height: defaultPadding,
        ),
        Text(
          recomendation.text!,
          style: const TextStyle(height: 1.5),
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),
      ]),
    );
  }
}
