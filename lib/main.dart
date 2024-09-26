import 'package:bmi_batool/mbi_Screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void main() {
    runApp(const MbiScreen());
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MbiScreen(),
    );
  }
}
