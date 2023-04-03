import 'package:flutter/material.dart';
import 'package:my_portfolio_website/projects_details.dart';

import '../constents.dart';

class SectionProject extends StatelessWidget {
  const SectionProject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'My Projects',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: defaultPadding,),
        GridView.builder(
            shrinkWrap: true,
            itemCount: projectDetails.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: defaultPadding,
                crossAxisSpacing: defaultPadding,
                childAspectRatio: 1.3),
            itemBuilder: (context, index) => ProjectCard(project: projectDetails[index],)),
      ],
    );
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
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          TextButton(onPressed: (){}, child: const Text("Read More>>", style: TextStyle(color: primaryColor),))
        ],
      ),
    );
  }
}
