import 'package:flutter/material.dart';

class SuccessStoriesPage extends StatelessWidget {
  const SuccessStoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Success Stories',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
