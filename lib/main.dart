import 'package:altayer/app.dart';
import 'package:altayer/core/style/color/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/application/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initAppModule();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: ColorManger.white,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(MyApp());
}
