import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvg extends StatelessWidget {
  const CustomSvg({super.key, required this.image, this.color});
  final String image;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return SvgPicture.asset(image, color: color);
  }
}
