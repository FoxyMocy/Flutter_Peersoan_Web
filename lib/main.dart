import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../pages/pages.dart';
import './themes/themes.dart';
import 'dart:html' as html;
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:webview_flutter/webview_flutter.dart' as webview;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Peersoan Emp App',
      theme: ThemeData(
        textTheme: GoogleFonts.rudaTextTheme(),
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors().primary,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/splash',
      getPages: [
        GetPage(
          name: '/splash',
          page: () => SplashScreen(),
        ),
        GetPage(
          name: '/create',
          page: () => CreateAccountPage(),
        ),
        GetPage(
          name: '/login',
          page: () => LoginPage(),
        ),
      ],
    );
  }
}
