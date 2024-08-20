/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsCertificatesGen {
  const $AssetsCertificatesGen();

  /// File path: assets/certificates/1699096363087.jfif
  String get a1699096363087 => 'assets/certificates/1699096363087.jfif';

  /// File path: assets/certificates/IIT-Madras.jpg
  AssetGenImage get iITMadras =>
      const AssetGenImage('assets/certificates/IIT-Madras.jpg');

  /// List of all assets
  List<dynamic> get values => [a1699096363087, iITMadras];
}

class $AssetsSkillsGen {
  const $AssetsSkillsGen();

  /// File path: assets/skills/CSS-Logo.png
  AssetGenImage get cSSLogo =>
      const AssetGenImage('assets/skills/CSS-Logo.png');

  /// File path: assets/skills/HTML.png
  AssetGenImage get html => const AssetGenImage('assets/skills/HTML.png');

  /// File path: assets/skills/J2EE.png
  AssetGenImage get j2ee => const AssetGenImage('assets/skills/J2EE.png');

  /// File path: assets/skills/Java-Logo.png
  AssetGenImage get javaLogo =>
      const AssetGenImage('assets/skills/Java-Logo.png');

  /// File path: assets/skills/MongoDB.png
  AssetGenImage get mongoDB => const AssetGenImage('assets/skills/MongoDB.png');

  /// File path: assets/skills/MySQl.jpg
  AssetGenImage get mySQl => const AssetGenImage('assets/skills/MySQl.jpg');

  /// File path: assets/skills/NET_Core_Logo.png
  AssetGenImage get nETCoreLogo =>
      const AssetGenImage('assets/skills/NET_Core_Logo.png');

  /// File path: assets/skills/SQL.png
  AssetGenImage get sql => const AssetGenImage('assets/skills/SQL.png');

  /// File path: assets/skills/dart.png
  AssetGenImage get dart => const AssetGenImage('assets/skills/dart.png');

  /// File path: assets/skills/flutter-logo.png
  AssetGenImage get flutterLogo =>
      const AssetGenImage('assets/skills/flutter-logo.png');

  /// File path: assets/skills/hibernate2.png
  AssetGenImage get hibernate2 =>
      const AssetGenImage('assets/skills/hibernate2.png');

  /// File path: assets/skills/jQuery.png
  AssetGenImage get jQuery => const AssetGenImage('assets/skills/jQuery.png');

  /// File path: assets/skills/js.png
  AssetGenImage get js => const AssetGenImage('assets/skills/js.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        cSSLogo,
        html,
        j2ee,
        javaLogo,
        mongoDB,
        mySQl,
        nETCoreLogo,
        sql,
        dart,
        flutterLogo,
        hibernate2,
        jQuery,
        js
      ];
}

class Assets {
  Assets._();

  static const $AssetsCertificatesGen certificates = $AssetsCertificatesGen();
  static const $AssetsSkillsGen skills = $AssetsSkillsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
