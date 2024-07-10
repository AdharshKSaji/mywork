
import 'package:flutter/material.dart';
import 'package:mywork/VIEW/Sections/projectsection/widgets/projectcard.dart';
import 'package:mywork/VIEW/myDatas.dart/skillslist.dart';
import 'package:mywork/globalwidget/subtitle.dart';


class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Subtitle(text: 'Skills'),
        const SizedBox(height: 10),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.spaceBetween,
          children: List.generate(
            skillList.length,
            (index) => ProjectSkillsWidget(
              text: skillList[index],
            ),
          ),
        ),
      ],
    );
  }
}
