/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/back.svg
  String get back => 'assets/icons/back.svg';

  /// File path: assets/icons/course.svg
  String get course => 'assets/icons/course.svg';

  /// File path: assets/icons/email.svg
  String get email => 'assets/icons/email.svg';

  /// File path: assets/icons/eye.svg
  String get eye => 'assets/icons/eye.svg';

  /// File path: assets/icons/eye1.png
  AssetGenImage get eye1 => const AssetGenImage('assets/icons/eye1.png');

  /// File path: assets/icons/eye2.png
  AssetGenImage get eye2 => const AssetGenImage('assets/icons/eye2.png');

  /// File path: assets/icons/face.svg
  String get face => 'assets/icons/face.svg';

  /// File path: assets/icons/fb.png
  AssetGenImage get fb => const AssetGenImage('assets/icons/fb.png');

  /// File path: assets/icons/gg.png
  AssetGenImage get ggPng => const AssetGenImage('assets/icons/gg.png');

  /// File path: assets/icons/gg.svg
  String get ggSvg => 'assets/icons/gg.svg';

  /// File path: assets/icons/ig.png
  AssetGenImage get igPng => const AssetGenImage('assets/icons/ig.png');

  /// File path: assets/icons/ig.svg
  String get igSvg => 'assets/icons/ig.svg';

  /// File path: assets/icons/name.svg
  String get name => 'assets/icons/name.svg';

  /// File path: assets/icons/noteye.svg
  String get noteye => 'assets/icons/noteye.svg';

  /// File path: assets/icons/notif.svg
  String get notif => 'assets/icons/notif.svg';

  /// File path: assets/icons/notifi.svg
  String get notifi => 'assets/icons/notifi.svg';

  /// File path: assets/icons/pass.svg
  String get pass => 'assets/icons/pass.svg';

  /// File path: assets/icons/play.svg
  String get play => 'assets/icons/play.svg';

  /// File path: assets/icons/profile.svg
  String get profile => 'assets/icons/profile.svg';

  /// File path: assets/icons/search.svg
  String get search => 'assets/icons/search.svg';

  /// File path: assets/icons/setting.svg
  String get setting => 'assets/icons/setting.svg';

  /// List of all assets
  List<dynamic> get values => [
        back,
        course,
        email,
        eye,
        eye1,
        eye2,
        face,
        fb,
        ggPng,
        ggSvg,
        igPng,
        igSvg,
        name,
        noteye,
        notif,
        notifi,
        pass,
        play,
        profile,
        search,
        setting
      ];
}

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

  /// File path: assets/images/search.png
  AssetGenImage get search => const AssetGenImage('assets/images/search.png');

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
        search,
        setting,
        signup,
        splash
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
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
