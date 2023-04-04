import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'util/color_schemes.g.dart';
import 'view/GptPage.dart';
import 'controller/GptController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        locale: Get.deviceLocale,
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.rightToLeft,
        initialBinding: BindingsBuilder(() {
          Get.put(GptPageController());
        }),
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
            child: ScreenUtilInit(
              useInheritedMediaQuery: true,
              designSize: const Size(360, 667 + 44 + 34),
              builder: (context, child2) {
                return child!;
              },
            ),
          );
        },
        theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
        darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
        themeMode: ThemeMode.system,
        home: const GptPage());
  }
}
