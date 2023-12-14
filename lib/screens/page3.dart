import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locl/constants.dart';
import 'package:locl/models/ICardItem.dart';
import 'package:locl/widgets/ICard.dart';

class Page3 extends StatefulWidget {
  static const String id = 'page3';
  const Page3({super.key});

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
                  CircleAvatar(
                    radius: 100.0,
                    backgroundImage: Image.network(
                      "https://picsum.photos/200",
                      width: 200,
                      height: 200,
                    ).image,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Name: Ganji Chudail",
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
                    "Email: ganjichudail@gmail.com",
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
                    child: ICard(
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
    // return Scaffold(
    //   backgroundColor: Colors.greenAccent[100],
    //   body: FutureBuilder(
    //     future: getUser(),
    //     builder: (context, snapshot) {
    //       while (snapshot.data == null) {
    //         return const Center(child: CircularProgressIndicator());
    //       }
    //       User? user = snapshot.data;
    //       return SafeArea(
    //         child: Column(
    //           //  Main column
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: <Widget>[
    //             Center(
    //               child: user != null && user.photoURL != null
    //                   ? Image.network(user.photoURL!)
    //                   : Text('No image found'),
    //             ),
    //             Text(
    //               user?.displayName ?? "Name",
    //               style: TextStyle(
    //                   fontSize: 40.0,
    //                   color: Colors.green[900],
    //                   fontFamily: 'Pacifico',
    //                   fontWeight: FontWeight.bold),
    //             ),
    //             const SizedBox(
    //               height: 20.0,
    //               width: 150.0,
    //               child: Divider(
    //                 color: Colors.teal,
    //               ),
    //             ),
    //             Text(
    //               'Verified User'.toUpperCase(),
    //               style: TextStyle(
    //                 fontSize: 20.0,
    //                 letterSpacing: 2.5,
    //                 color: Colors.green[900],
    //                 fontFamily: 'SourceSansPro',
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //             const SizedBox(
    //               height: 20.0,
    //               width: 150.0,
    //               child: Divider(
    //                 color: Colors.teal,
    //               ),
    //             ),
    //             Card(
    //               margin: const EdgeInsets.symmetric(
    //                   vertical: 10.0, horizontal: 25.0),
    //               child: ListTile(
    //                 leading: Icon(
    //                   Icons.email,
    //                   color: Colors.green[900],
    //                 ),
    //                 title: Text(
    //                   user?.email ?? "Email",
    //                   style: TextStyle(
    //                       color: Colors.green[900],
    //                       fontFamily: 'SourceSansPro',
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 16.0),
    //                 ),
    //               ),
    //             ),
    //             InkWell(
    //               onTap: () {
    //                 _auth.signOut();
    //                 Navigator.pop(context);
    //               },
    //               child: Card(
    //                 margin: const EdgeInsets.symmetric(
    //                     vertical: 10.0, horizontal: 25.0),
    //                 child: ListTile(
    //                   title: Text(
    //                     'Logout',
    //                     textAlign: TextAlign.center,
    //                     style: TextStyle(
    //                         color: Colors.green[900],
    //                         fontWeight: FontWeight.bold,
    //                         fontFamily: 'SourceSansPro',
    //                         fontSize: 20.0),
    //                   ),
    //                 ),
    //               ),
    //             )
    //           ],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
