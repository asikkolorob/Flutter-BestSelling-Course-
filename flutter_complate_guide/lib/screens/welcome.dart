import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../screens/home.dart';
import '../widgets/buttons.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const String id = 'welcome-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff142540),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Lottie.network(
              'https://assets3.lottiefiles.com/private_files/lf30_6ocpfdil.json',
              height: 220.0,
              width: 380.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20.0),
          const Text(
            'Flutter Quiz App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 50.0),
          ButtonsWidget(
            color: const Color.fromARGB(255, 24, 163, 223),
            onTab: () {
              Navigator.pushNamed(context, HomeScreen.id);
            },
            text: 'get started',
          )
        ],
      ),
    );
  }
}
