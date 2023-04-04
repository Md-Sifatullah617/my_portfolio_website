import 'package:flutter/material.dart';
import 'package:my_portfolio_website/projects_details.dart';
import 'package:my_portfolio_website/responsive.dart';

import '../constents.dart';

class SectionProject extends StatelessWidget {
  const SectionProject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Projects',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: ProjectBuilder(crossAxisCount: 1,),
          mobileLarge: ProjectBuilder(
            crossAxisCount: 2,
          ),
          tablet: ProjectBuilder(
            childAspectRatio: 1.1,
          ),
          desktop: ProjectBuilder(),
        )
      ],
    );
  }
}

class ProjectBuilder extends StatelessWidget {
  const ProjectBuilder({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  });
  final int crossAxisCount;
  final double childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: projectDetails.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: defaultPadding,
            crossAxisSpacing: defaultPadding,
            childAspectRatio: childAspectRatio),
        itemBuilder: (context, index) => ProjectCard(
              project: projectDetails[index],
            ));
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });
  final Projects project;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Spacer(),
          Text(
            project.description!,
            style: const TextStyle(height: 1.5),
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Read More>>",
                style: TextStyle(color: primaryColor),
              ))
        ],
      ),
    );
  }
}
