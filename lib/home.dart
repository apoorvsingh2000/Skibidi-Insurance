// ignore_for_file: library_private_types_in_public_api

import 'package:google_fonts/google_fonts.dart';
import 'package:locl/constants.dart';
import 'package:locl/screens/page1.dart';
import 'package:locl/screens/page2.dart';
import 'package:locl/screens/page3.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(
          'Skibidi Insurance',
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
        backgroundColor: kDarkColor,
        actions: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.05),
            child: InkWell(
              onTap: () => Navigator.pushNamed(context, Page2.id),
              child: Text(
                'Suggested Policies',
                style: TextStyle(
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
      body: const Page3(),
      // body: pages[_selectedIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: kDarkColor,
      //   selectedItemColor: Colors.white,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.history),
      //       label: 'Recent',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.youtube_searched_for),
      //       label: 'Suggested Policies',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.account_circle),
      //       label: 'Profile',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   onTap: navigate,
      // ),
    );
  }
}
