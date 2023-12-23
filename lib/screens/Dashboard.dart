import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locl/constants.dart';
import 'package:locl/widgets/ICard2.dart';

class Dashboard extends StatefulWidget {
  static const String id = 'page3';
  const Dashboard({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    getUser();
  }

  Future<User?> getUser() async {
    final User? user = _auth.currentUser;
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'User Profile',
                    style: TextStyle(
                        fontSize: 40.0,
                        color: kDarkColor,
                        fontFamily: GoogleFonts.lato().fontFamily,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  const CircleAvatar(
                    radius: 100.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('images/profile.png'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Name: Bose D.K.",
                    style: TextStyle(
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Email: bosedk93@gmail.com",
                    style: TextStyle(
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Text(
                    "Your policies:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: Colors.green[900],
                        fontFamily: GoogleFonts.roboto().fontFamily),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: ICard2(
                      item: kCardItem(),
                    ),
                  ),
                ]),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Image.asset("images/dashboard.png"),
            )
          ],
        ),
      ],
    ));
  }
}
