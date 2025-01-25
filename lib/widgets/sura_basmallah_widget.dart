import 'package:alzikr_alhakim/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SuraBasmallahWidget extends StatelessWidget {
  const SuraBasmallahWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Padding(
        padding:
            EdgeInsets.only(left: (size.width * .2), right: (size.width * .2)),
        child: Image.asset(
          Assets.imagesBasmala,
          color: Colors.black,
          width: MediaQuery.of(context).size.width * .4,
        ),
      ),
    );
  }
}
