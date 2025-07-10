import 'package:flutter/material.dart';
import 'package:minds_mugs/screens/home.dart';
import 'package:minds_mugs/screens/membership.dart';
import 'package:minds_mugs/screens/menu.dart';
import 'package:minds_mugs/screens/plan.dart';
import 'package:minds_mugs/screens/room.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        initialRoute: "HomeScreen",
        routes: {
// "signInScreen": (context) => SignUp(),
// "login_Screenr": (context) => LoginScreen(),
          "HomeScreen": (context) => const HomePageContent(),
          "StudyRoom": (context) => const StudyRoom(),
          "Menu": (context) => const menCaf(),
          "membership": (context) => const MembersShip(),
          "plan": (context) => const Plan(),
        });
  }
}
