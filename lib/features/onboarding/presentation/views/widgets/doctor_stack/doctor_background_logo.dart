
import 'package:doc_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorBackgroundLogo extends StatelessWidget {
  const DoctorBackgroundLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: AspectRatio(
        aspectRatio: 1,
        child: SvgPicture.asset(
          colorFilter: ColorFilter.mode(
            Color(0xffF2F7FF),
            BlendMode.srcIn,
          ),
          Assets.imagesSvgsAppLogo,
        ),
      ),
    );
  }
}