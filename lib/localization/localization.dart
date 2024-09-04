import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../generated/codegen_loader.g.dart';

Widget initializeLocation({required Widget child}) {
  return EasyLocalization(
    supportedLocales: const [
      Locale('en'),
    ],
    path: 'assets/translation',
    fallbackLocale: const Locale('en'),
    assetLoader: const CodegenLoader(),
    child: child,
  );
}
