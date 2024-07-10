
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mywork/core/constants/stringconstants.dart';
import 'package:mywork/utils/responsive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';


class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMobile(context)
          ? MainAxisAlignment.center
          : MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            launchUrl(Uri.parse(linkedinUrl));
          },
          icon: const Icon(
            FontAwesome.linkedin_brand,
          ),
        ),
        IconButton(
          onPressed: () {
            launchUrl(Uri.parse(githubUrl));
          },
          icon: const Icon(
            EvaIcons.github,
          ),
        ),
        IconButton(
          onPressed: () {
            launchUrl(Uri.parse(stackOverflowUrl));
          },
          icon: const Icon(
            TeenyIcons.stackoverflow,
          ),
        ),
        IconButton(
          onPressed: () {
            launchUrl(Uri.parse(mailUrl));
          },
          icon: const Icon(
            IonIcons.mail,
          ),
        ),
      ],
    );
  }
}
