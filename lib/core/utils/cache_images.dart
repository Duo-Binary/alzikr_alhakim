import 'dart:developer';

import 'package:alzikr_alhakim/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CacheImages {
  CacheImages._();
  static final List<String> _pngImages = [
    Assets.imagesBackground,
    Assets.imagesBasmala,
    Assets.imagesDoaaHeader,
    Assets.imagesNoQuran,
    Assets.imagesPrayerBackground,
    Assets.imagesQuranHeader,
    Assets.imagesSuraHeader,
  ];

  static final List<String> _svgImages = [
    Assets.imagesDoaaIcon,
    Assets.imagesLeadingIcon,
    Assets.imagesQuranIcon,
    Assets.imagesSaveFilled,
    Assets.imagesSuraMark,
    Assets.imagesPrayerIcon,
    Assets.imagesTimerIcon,
    Assets.imagesClock,
    Assets.imagesActiveFajr,
    Assets.imagesActiveShrok,
    Assets.imagesActiveDzhur,
    Assets.imagesActiveAser,
    Assets.imagesActiveMagrab,
    Assets.imagesUnactiveFajr,
    Assets.imagesUnactiveShrok,
    Assets.imagesUnactiveDzuhur,
    Assets.imagesUnactiveAser,
    Assets.imagesUnactiveMagrab,
    Assets.imagesVoice,
    Assets.imagesSilent,
  ];

  static Future<void> loadImages(BuildContext context) async {
    await _loadPngImages(context);
    log("loaded images successfully....");
  }

  static Future<void> _loadPngImages(BuildContext context) async {
    for (var image in _pngImages) {
      await precacheImage(AssetImage(image), context);
    }
  }

  static Future<void> loadSvgImages() async {
    for (var image in _svgImages) {
      var loader = SvgAssetLoader(image);
      await svg.cache
          .putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
    }
  }
}
