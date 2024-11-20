import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:la_enciclopedia_islamica/core/constants/app_pages_routes.dart';
import 'package:la_enciclopedia_islamica/core/helpers/navigation_service.dart';
import 'package:la_enciclopedia_islamica/intial_bindings.dart';

class YsMaterialApp extends StatelessWidget {
  const YsMaterialApp({
    super.key,
    this.title = '',
    this.theme,
    this.darkTheme,
    this.home,
  });
  final String title;
  final ThemeData? theme;
  final ThemeData? darkTheme;
  final Widget? home;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, __) => GetMaterialApp(
        navigatorKey: NavigationService.navigatorKey,
        debugShowCheckedModeBanner: false,
        title: title,
        theme: theme,
        darkTheme: darkTheme,
        // builder: EasyLoading.init(),
        initialBinding: InitialBindings(),
        home: home,
        getPages: AppPagesRoutes.appPages,
      ),
    );
  }
}
