import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locl/constants.dart';
import 'package:locl/models/ICardItem.dart';

class ICard extends StatefulWidget {
  final ICardItem item;

  const ICard({Key? key, required this.item}) : super(key: key);

  @override
  State<ICard> createState() => _ICardState();
}

class _ICardState extends State<ICard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
      child: InkWell(
        onTap: () {},
        child: Card(
          color: kCardColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      widget.item.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36.0,
                          color: Colors.green[900],
                          fontFamily: GoogleFonts.lato().fontFamily),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(widget.item.name, style: textStyle()),
                    Text(widget.item.duration, style: textStyle()),
                    Text(widget.item.price, style: textStyle()),
                    Text(widget.item.discount, style: textStyle()),
                    Text(widget.item.desc, style: textStyle()),
                  ],
                ),
                Container(
                  color: Colors.green[900],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/logo.png',
                        fit: BoxFit.contain, scale: 5),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
