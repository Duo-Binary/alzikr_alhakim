import 'dart:developer';

import 'package:alzikr_alhakim/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CacheImages {
  CacheImages._();
  static final List<String> _pngImages = [
    Assets.imagesBackground,
    Assets.imagesQuranHeader,
    Assets.imagesDoaaHeader,
    Assets.imagesBasmala,
    Assets.imagesNoQuran,
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
  ];

  static Future<void> loadImages(BuildContext context) async {
    await _loadPngImages(context);
    await _loadSvgImages();
    log("loaded images successfully....");
  }

  static Future<void> _loadPngImages(BuildContext context) async {
    for (var image in _pngImages) {
      await precacheImage(AssetImage(image), context);
    }
  }

  static Future<void> _loadSvgImages() async {
    for (var image in _svgImages) {
      var loader = SvgAssetLoader(image);
      svg.cache
          .putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
    }
  }
}
