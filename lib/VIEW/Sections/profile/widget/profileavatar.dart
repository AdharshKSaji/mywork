
import 'package:flutter/material.dart';
import 'package:mywork/core/constants/colorconstants.dart';
import 'package:mywork/core/constants/imageconstants.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        boxShadow: [
          BoxShadow(
            color: ColorConstants.navyShadow.withOpacity(1),
            blurRadius: 10,
            spreadRadius: 10,
          )
        ],
        border: Border.all(
          color: ColorConstants.lightNavy2,
          width: 5,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      ),
      child: CircleAvatar(
        backgroundColor: ColorConstants.primaryWhite,
        radius: 100,
        child: Image.asset(
          ImageConstants.profilePicture,
          fit: BoxFit.cover,
          width: 200,
          alignment: Alignment.topCenter,
        ),
      ),
    );
  }
}
