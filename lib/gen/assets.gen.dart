/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/intro1.png
  AssetGenImage get intro1 => const AssetGenImage('assets/images/intro1.png');

  /// File path: assets/images/intro2.png
  AssetGenImage get intro2 => const AssetGenImage('assets/images/intro2.png');

  /// File path: assets/images/intro3.png
  AssetGenImage get intro3 => const AssetGenImage('assets/images/intro3.png');

  /// File path: assets/images/login.png
  AssetGenImage get login => const AssetGenImage('assets/images/login.png');

  /// File path: assets/images/nopaymen.png
  AssetGenImage get nopaymen =>
      const AssetGenImage('assets/images/nopaymen.png');

  /// File path: assets/images/notfound.png
  AssetGenImage get notfound =>
      const AssetGenImage('assets/images/notfound.png');

  /// File path: assets/images/notsave.png
  AssetGenImage get notsave => const AssetGenImage('assets/images/notsave.png');

  /// File path: assets/images/payment.png
  AssetGenImage get payment => const AssetGenImage('assets/images/payment.png');

  /// File path: assets/images/result.png
  AssetGenImage get result => const AssetGenImage('assets/images/result.png');

  /// File path: assets/images/saved.png
  AssetGenImage get saved => const AssetGenImage('assets/images/saved.png');

  /// File path: assets/images/setting.png
  AssetGenImage get setting => const AssetGenImage('assets/images/setting.png');

  /// File path: assets/images/signup.png
  AssetGenImage get signup => const AssetGenImage('assets/images/signup.png');

  /// File path: assets/images/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        intro1,
        intro2,
        intro3,
        login,
        nopaymen,
        notfound,
        notsave,
        payment,
        result,
        saved,
        setting,
        signup,
        splash
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
