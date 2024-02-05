import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/colors.dart';

class RestaurantDetailss extends StatefulWidget {
   RestaurantDetailss({super.key,
    required this.image,
    required this.name,

  });
   final String image;
   final String name;

  @override
  State<RestaurantDetailss> createState() => _RestaurantDetailssState();
}

class _RestaurantDetailssState extends State<RestaurantDetailss> {
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.3,
                width: size.width,
                color: Colors.cyan,
              ),
              Row(
                children: [
                  Text("La Pasta House",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      )),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                ],
              ),
              Text("An authentic italian touch and delicious!",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
              Row(children: [
                Icon(Icons.star, color: org1, size: 20),
                Text(
                  "Excellent  9.5",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w400),
                )
              ]),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.timer, color: org1, size: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Excellent  9.5",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Home (Bhagyashri Appartment 15A) ",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                      MaterialButton(
                        onPressed: () {},
                        elevation: 0,
                        color: Colors.orange.shade100,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Text("change", style: TextStyle(color: org1)),
                      )
                    ]),
              ),
              Row(children: [
                Icon(Icons.timer, color: org1, size: 20),
                Text(
                  "Excellent  9.5",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w400),
                )
              ]),
              Expanded(
                  child: ListView.builder(
                itemCount: fastfood.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Container(
                          width: size.width * 0.5,
                          color: Colors.white70,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${index+1}. Pesto Pasta",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Home made basil pasto, permesan cheese, sun dried tomatoes",
                                style:
                                    TextStyle(fontSize: 20, color: Colors.grey),
                              ),
                              Text(
                                "Price 100",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: org1),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: size.height * 0.16,
                            color: Colors.orange.shade100,
                            child: Image(
                                image: AssetImage(
                              fastfood[index],
                            )),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
