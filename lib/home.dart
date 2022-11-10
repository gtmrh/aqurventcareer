import 'package:aqurvent_career/pages/about.dart';
import 'package:aqurvent_career/pages/contact.dart';
import 'package:aqurvent_career/pages/main_home.dart';
import 'package:aqurvent_career/pages/register.dart';
import 'package:aqurvent_career/pages/testimonials.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedPage = 0;
  final _pageNo = [
    const HomeMain(),
    const Register(),
    const Testimonials(),
    const About(),
    const Contact()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 97, 154, 252),
        centerTitle: true,
        title: const Text("Aqurvent Career"),
      ),
      // drawer: const CustomDrawer(name: "name", nameChar: "n", mobNo: "mobNo"),
      bottomNavigationBar: ConvexAppBar(
        initialActiveIndex: selectedPage,
        backgroundColor: const Color.fromARGB(255, 97, 154, 252),
        items: const [
          TabItem(icon: Icons.person_pin_circle, title: 'Home'),
          TabItem(icon: Icons.shopping_cart, title: 'Register'),
          TabItem(icon: Icons.upload_file_rounded, title: 'Testimonials'),
          TabItem(icon: Icons.notifications, title: 'About'),
          TabItem(icon: Icons.notifications, title: 'Contact'),
        ],
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
        },
      ),
      body: _pageNo[selectedPage],
    );
  }
}
