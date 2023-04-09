import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-1826259758098596/5351900384';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-1826259758098596/5351900384';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-1826259758098596/6834627154';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-1826259758098596/6834627154';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-1826259758098596/7955417963';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-1826259758098596/7955417963';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}
