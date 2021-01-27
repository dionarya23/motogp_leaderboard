import 'package:flutter/material.dart';
// import 'package:motogp_leaderboard/main_screen.dart';
import 'package:motogp_leaderboard/detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: "Motogp Leaderboard 2020",
     theme: ThemeData(
        primaryColor: Color(0xFF4098D2),
        accentColor: Color(0xFFD8ECF1),
        // scaffoldBackgroundColor: Color(0xFF4098D2),
     ),
     home: DetailScreen()
   );
 }
}
