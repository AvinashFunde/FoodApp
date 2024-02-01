import 'package:fast_food/utils/globalWidget.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class Search extends StatefulWidget {
  Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  late Size size = MediaQuery.of(context).size;
  List suggest = [
    "burger",
    "vegetarian",
    "healthy",
    "fast food",
    "salad",
    "snack",
    "sandwich",
    "biryani",
    "dessert",
    "starter",
    "samosa",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(30.0),
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
                      hintText: "    search", prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),
            Wrap(
              runSpacing: 20,
              spacing: 20,
              alignment: WrapAlignment.center,
              children: [
                ...List.generate(
                  suggest.length,
                  (index) =>
                      GlobalWidgets().searchPAgeContainer(suggest[index]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
