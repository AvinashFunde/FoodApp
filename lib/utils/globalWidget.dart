import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class GlobalWidgets {
  static Widget mainWidgetTitleBar(String name, String icon, onTap, Size size,[bool showContainer = true]) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(name,
            style: GoogleFonts.arvo(fontSize: 26, fontWeight: FontWeight.bold)),
        if (showContainer)
          Container(
            height: 33,
            width: 33,
            decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            child: Image(
              // height: 50,
              // width: 50,
              image: AssetImage(
                icon,
              ),
            ),
          ),
        SizedBox(width: 20),
        MaterialButton(
          elevation: 0,
          onPressed: () {
            onTap();
          },
          color: Colors.orange.shade100,
          minWidth: size.width * 0.2,
          shape: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Text("see all",
              style: TextStyle(
                color: btn,
              )),
        )
      ],
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

  static Widget popularItems( String image, productname, productdescription, Size size,
      [bool containercolor = true]) {
    return Container(
        height: size.height * 0.2,
        width: size.width,
        decoration: BoxDecoration(color: Colors.white),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.antiAlias,
          itemCount: 5,
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
                      color: containercolor ? Colors.white : containerbg,
                      height: size.height * 0.12,
                      width: size.width * 0.5,
                      child: Image(
                        image: AssetImage(image),
                       // fit: BoxFit.cover,
                        width: 10,
                        height: 10,
                      ),
                    ),
                    Text(
                      productname,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      productdescription,
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

  Widget fantasticItems(String image, name, description, Size size) {
    return Container(
        height: size.height * 0.3,
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Container(
                    width: size.width * 0.78,
                    height: size.height * 0.19,
                    color: Colors.black,
                    child: Image(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: size.width * 0.38),
                    child: Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Icon(Icons.delivery_dining, color: org1),
                      Text("300", style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 25),
                      Icon(
                        Icons.timer,
                        color: org1,
                        size: 16,
                      ),
                      Text("30-40 min", style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 20),
                      Icon(Icons.star, color: org1, size: 17),
                      Text("9.5", style: TextStyle(color: Colors.grey)),
                      SizedBox(
                        width: size.width * 0.14,
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ));
  }

  Widget searchPAgeContainer (String reacentSearchText){
    return  Container(
      height: 40,
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
          color: org1,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Text(reacentSearchText,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.white
          )),
    );
  }
}
