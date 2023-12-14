import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locl/constants.dart';
import 'package:locl/models/ICardItem.dart';
import 'package:locl/widgets/ICard.dart';

class Page2 extends StatefulWidget {
  static const String id = 'page2';
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<ICardItem> items = [];

  @override
  void initState() {
    super.initState();
    getPolicy();
  }

  getPolicy() {
    items = [
      ICardItem(
          "Super duper Health Insurance",
          "1862.05",
          "7",
          "5",
          "This is a super duper good policy. Buy it. Extremely good. Yaas queen!",
          "images/logo.png"),
      ICardItem(
          "Super duper Health Insurance",
          "1862.05",
          "7",
          "5",
          "This is a super duper good policy. Buy it. Extremely good. Yaas queen!",
          "images/logo.png"),
      ICardItem(
          "Super duper Health Insurance",
          "1862.05",
          "7",
          "5",
          "This is a super duper good policy. Buy it. Extremely good. Yaas queen!",
          "images/logo.png"),
      ICardItem(
          "Super duper Health Insurance",
          "1862.05",
          "7",
          "5",
          "This is a super duper good policy. Buy it. Extremely good. Yaas queen!",
          "images/logo.png"),
      ICardItem(
          "Super duper Health Insurance",
          "1862.05",
          "7",
          "5",
          "This is a super duper good policy. Buy it. Extremely good. Yaas queen!",
          "images/logo.png"),
      ICardItem(
          "Super duper Health Insurance",
          "1862.05",
          "7",
          "5",
          "This is a super duper good policy. Buy it. Extremely good. Yaas queen!",
          "images/logo.png"),
      ICardItem(
          "Super duper Health Insurance",
          "1862.05",
          "7",
          "5",
          "This is a super duper good policy. Buy it. Extremely good. Yaas queen!",
          "images/logo.png"),
      ICardItem(
          "Super duper Health Insurance",
          "1862.05",
          "7",
          "5",
          "This is a super duper good policy. Buy it. Extremely good. Yaas queen!",
          "images/logo.png"),
    ];
  }

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
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              child: Text(
                'Suggested Policies For You',
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.green[900],
                    fontFamily: GoogleFonts.lato().fontFamily,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child:
                // FutureBuilder(
                //   future: getVideos(),
                //   builder: (context, snapshot) {
                //     while (snapshot.data == null) {
                //       return const Center(child: CircularProgressIndicator());
                //     }
                //     return
                Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 16.0),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 4),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    ICardItem item = items[index];
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ICard(item: item));
                  }),
            ),
            //   },
            // ),
          ),
        ],
      ),
    );
  }
}
