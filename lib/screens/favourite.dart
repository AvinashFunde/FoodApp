import 'package:fast_food/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottamNAvBar.dart';

class Favorite extends StatefulWidget {
  Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  late Size size = MediaQuery.of(context).size;
  bool isSelected = true;

  List<String> fastfood = [
    "assets/pizza.png",
    "assets/pizza2.png",
    "assets/kung pao.png",
    "assets/humbur.png",
    "assets/fries.png",
    "assets/food-13549.png",
    "assets/pizza.png",
    "assets/british chiko.png",
  ];
  List<String> fastfoodname = [
    "Shrimp Pizza",
    "Tomaato Pizza",
    "Chicken Dacko",
    " Vegis Chicken",
    " Macdonal Fries",
    "Fried Chicken",
    "Margarita Piza",
    "Chicken Cutlet",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  height: size.height * 0.05,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade50,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "    search",
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.only(bottom: 15),
                  // height: MediaQuery.of(context).size.height*0.07,
                  // width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.black,
                          width: 1)), // Set your preferred color
                  child: TabBar(
                    indicatorColor: Colors.white,
                    //unselectedLabelColor: Colors.grey,

                    tabs: [
                      Tab(
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                              color: org2,
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: Text(
                              "Food items",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: Text(
                              "Restaurants",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ListView.builder(
                      itemCount: fastfood.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Stack(
                            children: [
                              Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: size.height * 0.20,
                                      width: size.width,
                                      color: Colors.orange.shade100,
                                      child: Image(
                                        image: AssetImage(fastfood[index]),
                                      ),
                                    ),
                                    Text(fastfoodname[index],
                                        style: GoogleFonts.abrilFatface(
                                            fontSize: 20, letterSpacing: 5)),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 5, bottom: 5),
                                      child: Text("A sea food lover's dreams",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.table_restaurant,
                                            color: org1),
                                        Text(
                                          "Crazy pizza spot",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Icon(Icons.wallet, color: org1),
                                        Text(
                                          "Add",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Icon(Icons.timer, color: org1),
                                        Text(
                                          "20-30 min",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Icon(Icons.star, color: org1),
                                        Text(
                                          "8.7 ",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: size.width * 0.82,
                                top: size.height * 0.02,
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                  child:
                                      Icon(Icons.favorite, color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    Container(
                      color: Colors.red,
                      child: Center(
                        child: Text("funde"),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
