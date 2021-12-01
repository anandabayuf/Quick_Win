import 'package:flutter/material.dart';

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
      //initialRoute: '/login',
      routes: const {
        // '/login': (context) => LoginScreen(),
        // '/lupa-password': (context) => InputEmailScreen(),
        // '/verifikasi-email': (context) => EmailVerificationScreen(),
        // '/buat-password-baru': (context) => MakeNewPassScreen(),
        // // '/home': (context) => HomeScreen(),
        // // '/profile': (context) => ProfileScreen(),
        // '/pembiayaan/riwayat': (context) => RiwayatPembiayaanScreen(),
        // '/simpanan/riwayat': (context) => RiwayatSimpananScreen(),
        // '/investasi/riwayat': (context) => RiwayatInvestasiScreen(),
      },
    );
  }
}
