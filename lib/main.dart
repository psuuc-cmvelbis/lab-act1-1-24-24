import 'package:flutter/material.dart';
import 'package:vel/home_screen.dart';

void main() {
  runApp(ggs());
}

class ggs extends StatelessWidget {
  const ggs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
