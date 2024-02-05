import 'package:fast_food/screens/restaurantDetails.dart';
import 'package:fast_food/utils/asset_images.dart';
import 'package:fast_food/utils/globalWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors.dart';

class ProductModel {
  String image;
  String name;

  ProductModel({required this.image, required this.name});
}

class Restaurent extends StatefulWidget {
  Restaurent({super.key});

  @override
  State<Restaurent> createState() => _RestaurentState();
}

class _RestaurentState extends State<Restaurent> {
  late Size size;
  List<ProductModel> products = [
    ProductModel(image: "assets/biryaniThali.png", name: "Biryana Thali"),
    ProductModel(image: "assets/southThali.png", name: "South Thali"),
    ProductModel(image: "assets/vegThali.png", name: "Veg Thali"),
    ProductModel(image: "assets/eggRice.png", name: "Egg Thali"),
  ];

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
                style:TextStyle(
                    fontFamily: 'PoppinsBold',
                  fontSize: 24

                )),
            GlobalWidgets.mainWidgetTitleBar(
                "Catogories", clapHands, () {}, size, false),
            GlobalWidgets.popularItems(chichek, "Fried Chicken",
                "Delicious fried chicken from nagpur", size, false),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: Text("All restaurant",
                  style:TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold,
                    fontFamily: 'PoppinsBold'
                  )),
            ),
            Container(
                height: size.height * 0.5,
                width: size.width,
                decoration: BoxDecoration(color: Colors.white),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  clipBehavior: Clip.antiAlias,
                  itemCount: products.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RestaurantDetailss(
                                      image: products[index].image,
                                      name: products[index].name,
                                    )));
                      },
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: size.width,
                              height: size.height * 0.19,
                              color: Colors.black,
                              child: Image(
                                image: AssetImage(products[index].image),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5, bottom: 7),
                              child: Text(
                                products[index].name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Text(
                              " Fruits bowl s the very testy as well as healthy for us",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.delivery_dining, color: org1),
                                Text("300",
                                    style: TextStyle(color: Colors.grey)),
                                SizedBox(width: 25),
                                Icon(
                                  Icons.timer,
                                  color: org1,
                                  size: 16,
                                ),
                                Text("30-40 min",
                                    style: TextStyle(color: Colors.grey)),
                                SizedBox(width: 20),
                                Icon(Icons.star, color: org1, size: 17),
                                Text("9.5",
                                    style: TextStyle(color: Colors.grey)),
                                SizedBox(
                                  width: size.width * 0.14,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    ));
  }
}
