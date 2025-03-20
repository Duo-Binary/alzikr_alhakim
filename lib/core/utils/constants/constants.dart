import 'package:alzikr_alhakim/core/utils/assets.dart';

abstract class Constants {
  static List<String> unActiveIcons = [
    Assets.imagesUnactiveFajr,
    Assets.imagesUnactiveShrok,
    Assets.imagesUnactiveDzuhur,
    Assets.imagesUnactiveAser,
    Assets.imagesUnactiveMagrab,
    Assets.imagesUnactiveFajr
  ];

  static List<String> activeIcons = [
    Assets.imagesActiveFajr,
    Assets.imagesActiveShrok,
    Assets.imagesActiveDzhur,
    Assets.imagesActiveAser,
    Assets.imagesActiveMagrab,
    Assets.imagesActiveFajr
  ];

  static const latitude = 'latitude';
  static const longitude = 'longitude';
  static const address = 'address';

  static const url = "https://api.jsonbin.io/v3/b/67dc0e888960c979a57542c6";

  static const firstTime = "firstTime";
}
