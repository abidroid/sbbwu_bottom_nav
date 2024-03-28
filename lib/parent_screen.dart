import 'package:flutter/material.dart';
import 'package:sbbwu_bottom_nav/pages/about_us_page.dart';
import 'package:sbbwu_bottom_nav/pages/contact_us_page.dart';
import 'package:sbbwu_bottom_nav/pages/home_page.dart';
import 'package:sbbwu_bottom_nav/pages/success_stories_page.dart';
import 'package:sbbwu_bottom_nav/screens/admin_screen.dart';

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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                color: Colors.blue,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.ac_unit_sharp,
                      size: 80,
                      color: Colors.white,
                    ),
                    Text(
                      ' SHAHEED BENAZIR BHUTTO WOMEN UNIVERSITY',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),

            ListTile(leading: Icon(Icons.person),
              title: const Text('Admin'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const AdminScreen();
              }));
              },
            ),
            ListTile(leading: Icon(Icons.subject),
              title: const Text('Faculties'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){},
            ),
            ListTile(leading: Icon(Icons.add_card_rounded),
              title: const Text('Academics'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){},
            ),
            Divider(),
            ListTile(leading: Icon(Icons.star_outline),
              title: const Text('Rate us'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){},
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_sharp), label: 'About Us'),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Contact Us'),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_outline), label: 'Stories'),
        ],
      ),
      appBar: AppBar(
        title: const Text('Bottom Nav Demo'),
      ),
      body: pages[selectedIndex],
    );
  }
}
