import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: const Center(
        child: Text(
          'Contact us',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
