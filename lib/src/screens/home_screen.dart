import 'package:flutter/material.dart';

import 'package:piano_clone/src/screens/game_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade200,
      body: const GameScreen(),
    );
  }
}
