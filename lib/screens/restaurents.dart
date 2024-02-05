import 'package:fast_food/utils/asset_images.dart';
import 'package:fast_food/utils/globalWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class Restaurent extends StatefulWidget {
  const Restaurent({super.key});

  @override
  State<Restaurent> createState() => _RestaurentState();
}

class _RestaurentState extends State<Restaurent> {
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GlobalWidgets().location(),
                SizedBox(
                  width: 20,
                ),
                Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Image(
                      image: AssetImage(setting),
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Image(
                      image: AssetImage(map),
                    )),
              ],
            ),
            Text("Restaurants",
                style: GoogleFonts.arvo(
                  fontSize: 30,
                )),
            GlobalWidgets.mainWidgetTitleBar(
                "Catogories", clapHands, () {}, size, false),
            GlobalWidgets.popularItems(chichek, "Fried Chicken",
                "Delicious fried chicken from nagpur", size, false),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 15),
              child: Text("All restaurant",
                  style:
                      GoogleFonts.arvo(fontSize: 26, fontWeight: FontWeight.bold)),
            ),
            GlobalWidgets().fantasticItems(fruit, "Testy fruits",
                "Fruits bown is the very as well as healthy for us", size,(){}),
             GlobalWidgets.popularItems(salat, "Momes", "momos is best fast food", size)
          ],
        ),
      ),
    ));
  }
}
