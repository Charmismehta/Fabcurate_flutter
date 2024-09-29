import 'package:fabcurate_flutter/routes/index.dart';
import 'package:fabcurate_flutter/screen/dashboard_screen/dashboard_screen.dart';
import 'package:fabcurate_flutter/screen/homeScreen/index.dart';
import 'package:fabcurate_flutter/theme/app_theme.dart';
import 'package:fabcurate_flutter/theme/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        themeMode: ThemeService().theme,
        theme: AppTheme.fromType(ThemeType.light).themeData,
        locale: const Locale('en', 'US'),
        home: DashboardScreen(),
        title: 'Fabcurate',
        getPages: appRoute.getPages,
        debugShowCheckedModeBanner: false);
  }
}
