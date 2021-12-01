// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:quick_win/views/home/screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Win',
      theme: ThemeData(
        fontFamily: 'Comfortaa',
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          }
        )
      ),
      initialRoute: '/home',
      routes: {
        // '/login': (context) => LoginScreen(),
        // '/lupa-password': (context) => InputEmailScreen(),
        // '/verifikasi-email': (context) => EmailVerificationScreen(),
        // '/buat-password-baru': (context) => MakeNewPassScreen(),
        // ignore: prefer_const_constructors
        '/home': (context) => HomeScreen(),
        // // '/profile': (context) => ProfileScreen(),
        // '/pembiayaan/riwayat': (context) => RiwayatPembiayaanScreen(),
        // '/simpanan/riwayat': (context) => RiwayatSimpananScreen(),
        // '/investasi/riwayat': (context) => RiwayatInvestasiScreen(),
      },
    );
  }
}
