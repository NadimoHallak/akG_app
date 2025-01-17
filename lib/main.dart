import 'package:akaratg_app/view/pages/auth/login_page.dart';
import 'package:akaratg_app/view/pages/splash_screen/splash_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true),
      home: SplashScreenPage(),
    );
  }
}
