import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constents.dart';
import 'package:my_portfolio_website/home/homepage.dart';
import 'package:my_portfolio_website/projects_details.dart';

import '../Components/banner.dart';
import '../Components/highlighted_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyHomePage(children: [
      const HOmeBanner(),
      const SizedBox(
        height: defaultPadding,
      ),
      const SectionHighlight(),
      const SizedBox(
        height: defaultPadding,
      ),
      Text(
        'My Projects',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      GridView.builder(
          shrinkWrap: true,
          itemCount: projectDetails.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: defaultPadding,
              crossAxisSpacing: defaultPadding,
              childAspectRatio: 1.3),
          itemBuilder: (context, index) => ProjectCard(project: projectDetails[index],))
    ]);
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key, required this.project,
  });
  final Projects project;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: defaultPadding,),
          Text(
            project.description!,
            style: const TextStyle(height: 1.5),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
