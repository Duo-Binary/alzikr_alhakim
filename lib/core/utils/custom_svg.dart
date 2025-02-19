import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvg extends StatelessWidget {
  const CustomSvg(
      {super.key,
      required this.image,
      this.color,
      this.height,
      this.width,
      this.fit = BoxFit.contain});
  final String image;
  final Color? color;
  final double? height, width;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return SvgPicture.asset(image,
        color: color, height: height, width: width, fit: fit);
  }
}
