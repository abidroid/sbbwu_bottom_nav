import 'package:flutter/material.dart';
import 'package:sbbwu_bottom_nav/pages/about_us_page.dart';
import 'package:sbbwu_bottom_nav/pages/contact_us_page.dart';
import 'package:sbbwu_bottom_nav/pages/home_page.dart';
import 'package:sbbwu_bottom_nav/pages/success_stories_page.dart';

class ParentScreen extends StatefulWidget {
  const ParentScreen({super.key});

  @override
  State<ParentScreen> createState() => _ParentScreenState();
}

class _ParentScreenState extends State<ParentScreen> {

  // state variable
  int selectedIndex = 0;

  List<Widget> pages = [
    const HomePage(),
    const AboutUsPage(),
    const ContactUsPage(),
    const SuccessStoriesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        currentIndex: selectedIndex,
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit_sharp), label: 'About Us'),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Contact Us'),
          BottomNavigationBarItem(icon: Icon(Icons.star_outline), label: 'Stories'),
        ],
      ),
      appBar: AppBar(
        title: const Text('Bottom Nav Demo'),
      ),

      body: pages[selectedIndex],
    );
  }
}
