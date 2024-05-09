import 'package:altayer/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/route_manger.dart';
import 'core/style/theme/theme_manger.dart';

class MyApp extends StatelessWidget {
  const MyApp._internal(); //privet named constructor

  static const MyApp _instance =
      MyApp._internal(); //singleton or single _instance
  factory MyApp() => _instance; //factory

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        useInheritedMediaQuery: true,
        child: GetMaterialApp(
          theme: getApplicationTheme(),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.splashRoute,
          onGenerateRoute: RouteGenerator.getRoute,
        ));
  }
}
