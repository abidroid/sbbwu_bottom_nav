import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      child: const Center(
        child: Text(
          'Home',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
