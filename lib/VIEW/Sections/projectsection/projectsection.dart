import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mywork/VIEW/Sections/projectsection/widgets/projectcard.dart';
import 'package:mywork/VIEW/myDatas.dart/myprojectlist.dart';
import 'package:mywork/globalwidget/subtitle.dart';
import 'package:mywork/utils/responsive/responsive.dart';


class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Subtitle(text: 'Projects'),
        const SizedBox(height: 20),
        GridView.builder(
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 600,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: isMobile(context) ? 10 / 12 : 10 / 11,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            var item = projectList[index];
            return ProjectCard(item: item);
          },
          itemCount: projectList.length,
        ),
      ],
    );
  }
}