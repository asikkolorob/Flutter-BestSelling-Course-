import 'package:flutter/material.dart';
import 'package:flutter_complate_guide/screens/home.dart';
import 'package:flutter_complate_guide/screens/welcome.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
      },
    );
  }
}
