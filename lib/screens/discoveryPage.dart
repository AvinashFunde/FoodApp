import 'package:carousel_slider/carousel_slider.dart';
import 'package:fast_food/screens/favourite.dart';
import 'package:fast_food/screens/profile.dart';
import 'package:fast_food/screens/restaurents.dart';
import 'package:fast_food/screens/search.dart';
import 'package:fast_food/utils/globalWidget.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/asset_images.dart';
import '../utils/colors.dart';

class Discovery extends StatefulWidget {
  const Discovery({super.key});

  @override
  State<Discovery> createState() => _DiscoveryState();
}

class _DiscoveryState extends State<Discovery> {
  String currentLocation = "Loading...";
  int _selectedIndex = 0;

  late Size size;

  // @override
  // void initState() {
  //   super.initState();
  //   _getCurrentLocation();
  // }

  // Future<void> _getCurrentLocation() async {
  //   try {
  //     Position position = await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.high,
  //     );
  //     setState(() {
  //       currentLocation = "Location: ${position.latitude}, ${position.longitude}";
  //     });
  //   } catch (e) {
  //     setState(() {
  //       currentLocation = "Error: $e";
  //     });
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              location(),
              advertiseSlider(),
              SizedBox(
                height: 15,
              ),
              GlobalWidgets.mainWidgetTitleBar(
                  'Fantastic delivery', fire, () {}, size),
              GlobalWidgets().fantasticItems(thali, "Craazy tacko", "Delicious tackos, Appetizing snack", size),
              GlobalWidgets.mainWidgetTitleBar(
                  'Popular items', clapHands, () {}, size),
              popularItems(),
            ],
          ),
        ),
      ),
    );
  }

  Widget location() {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 33,
            width: 40,
            decoration: BoxDecoration(color: btn, shape: BoxShape.circle),
            child: Icon(Icons.home, color: Colors.black26),
          ),
          Text(
            "Home , ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            "TechQuadra, Nagpue 440010.",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget popularItems() {
    return Container(
        height: size.height * 0.2,
        width: size.width,
        decoration: BoxDecoration(color: Colors.white),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.antiAlias,
          itemCount: 3,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                width: size.width * 0.4,
                height: size.height * 0.2,
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      height: size.height * 0.1,
                      child: Image(
                        image: AssetImage("assets/burger.jpg"),
                      ),
                    ),
                    Text(
                      "Burgirr",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Delicious tackos,",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }

  // Widget fantasticItems() {
  //   return Container(
  //       height: size.height * 0.3,
  //       width: size.width,
  //       decoration: BoxDecoration(color: Colors.white),
  //       child: ListView.builder(
  //         scrollDirection: Axis.horizontal,
  //         clipBehavior: Clip.antiAlias,
  //         itemCount: 3,
  //         shrinkWrap: true,
  //         itemBuilder: (context, index) {
  //           return Card(
  //             elevation: 5,
  //             shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.all(Radius.circular(15))),
  //             clipBehavior: Clip.antiAlias,
  //             child: Column(
  //               children: [
  //                 Container(
  //                   width: size.width * 0.78,
  //                   height: size.height * 0.19,
  //                   color: Colors.black,
  //                   child: Image(
  //                     image: AssetImage("assets/thali.png"),
  //                     fit: BoxFit.cover,
  //                   ),
  //                 ),
  //                 Padding(
  //                   padding: EdgeInsets.only(right: size.width * 0.38),
  //                   child: Text(
  //                     "Crazy tacko",
  //                     style: TextStyle(
  //                       fontWeight: FontWeight.bold,
  //                       fontSize: 20,
  //                     ),
  //                   ),
  //                 ),
  //                 Text(
  //                   "Delicious tackos, appetizing snack, fir...",
  //                   style: TextStyle(
  //                       fontWeight: FontWeight.bold,
  //                       fontSize: 15,
  //                       color: Colors.grey),
  //                 ),
  //                 Row(
  //                   children: [
  //                     Icon(Icons.delivery_dining, color: org1),
  //                     Text("300", style: TextStyle(color: Colors.grey)),
  //                     SizedBox(width: 25),
  //                     Icon(
  //                       Icons.timer,
  //                       color: org1,
  //                       size: 16,
  //                     ),
  //                     Text("30-40 min", style: TextStyle(color: Colors.grey)),
  //                     SizedBox(width: 20),
  //                     Icon(Icons.star, color: org1, size: 17),
  //                     Text("9.5", style: TextStyle(color: Colors.grey)),
  //                     SizedBox(
  //                       width: size.width * 0.14,
  //                     )
  //                   ],
  //                 )
  //               ],
  //             ),
  //           );
  //         },
  //       ));
  // }

  Widget advertiseSlider() {
    return Container(
      height: size.height * 0.25,
      width: size.width,
      decoration: BoxDecoration(color: Colors.white),
      child: CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (context, index, realIndex) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [org1, org1, org2],
                  )),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "Get your 30% daily\n discount now!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.black,
                        minWidth: size.width * 0.3,
                        shape: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Text("Order now",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  Expanded(child: Image(image: AssetImage("assets/vegis.png")))
                ],
              ),
            );
          },
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true,
            clipBehavior: Clip.antiAlias,
            height: size.height * 0.23,
            enlargeCenterPage: true,
          )),
    );
  }
}
