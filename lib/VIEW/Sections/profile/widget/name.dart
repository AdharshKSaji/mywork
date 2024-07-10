
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mywork/VIEW/Sections/profile/widget/socialmedia.dart';
import 'package:mywork/core/constants/colorconstants.dart';
import 'package:mywork/utils/responsive/responsive.dart';



class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: isMobile(context)
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Text(
          'Hi, I\'m,',
          style: GoogleFonts.pattaya().copyWith(
            fontSize: 15,
            color: ColorConstants.primaryWhite,
          ),
        ),
        Text(
          'ADHARSH K SAJI',
          style: GoogleFonts.spicyRice().copyWith(
            fontSize: 30,
            color: ColorConstants.primaryWhite,
          ),
        ),
        Text(
          'I\'m a Flutter Developer',
          style: GoogleFonts.balooPaaji2().copyWith(
            fontSize: 25,
            color: Colors.white70,
          ),
          textAlign: isMobile(context) ? TextAlign.center : null,
        ),
        Text(
          'Crafting beautiful, high-performance cross-platform mobile applications with Flutter.',
          style: GoogleFonts.balooPaaji2().copyWith(
            fontSize: 14,
            color: Colors.white54,
          ),
          textAlign: isMobile(context) ? TextAlign.center : TextAlign.start,
        ),
        const SocialMediaButtons()
      ],
    );
  }
}
