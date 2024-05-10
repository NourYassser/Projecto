import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturant_app/splash.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 1,
                color: Color.fromARGB(255, 190, 29, 17),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 1,
                color: Color.fromARGB(255, 190, 29, 17),
              ),
            ),
          ),
          fontFamily: GoogleFonts.aDLaMDisplay().fontFamily,
          scaffoldBackgroundColor: const Color.fromARGB(255, 238, 234, 226),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 190, 29, 17),
          )),
      home: const SplashScreen(),
    );
  }
}
