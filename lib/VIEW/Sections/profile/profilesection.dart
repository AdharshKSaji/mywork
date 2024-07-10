
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mywork/VIEW/Sections/profile/widget/name.dart';
import 'package:mywork/VIEW/Sections/profile/widget/profileavatar.dart';
import 'package:mywork/utils/responsive/responsive.dart';


class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: Center(
        child: isMobile(context)
            ? Column(
                children: [
                  ProfileAvatar(),
                  const SizedBox(height: 10),
                  NameWidget(),
                ],
              )
            : Row(
                children: [
                  ProfileAvatar(),
                  const SizedBox(width: 50),
                  Expanded(
                    child: NameWidget(),
                  ),
                ],
              ),
      ),
    );
  }
}
