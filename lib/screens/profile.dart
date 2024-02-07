import 'package:fast_food/screens/login_screen.dart';
import 'package:fast_food/screens/restaurantDetails.dart';
import 'package:fast_food/utils/colors.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/colors.dart';
import 'bottamNAvBar.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 50.0, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                height: 100,
                width: 100,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                child: Image(
                  image: AssetImage("assets/avinash.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                "Avinash Funde",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3),
              ),
              Text("avinash12345@gmail.com"),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(Icons.person, color: org1),
                title: Text("My Profile",
                    style: TextStyle(fontWeight: FontWeight.w400)),
              ),
              ListTile(
                leading: Icon(Icons.reorder, color: org1),
                title: Text("My Order",
                    style: TextStyle(fontWeight: FontWeight.w400)),
              ),
              ListTile(
                leading: Icon(Icons.location_on, color: org1),
                title: Text("Delivery Address",
                    style: TextStyle(fontWeight: FontWeight.w400)),
              ),
              ListTile(
                leading: Icon(Icons.payment, color: org1),
                title: Text("Payment Method",
                    style: TextStyle(fontWeight: FontWeight.w400)),
              ),
              ListTile(
                leading: Icon(Icons.contact_mail, color: org1),
                title: Text("Contact Us",
                    style: TextStyle(fontWeight: FontWeight.w400)),
              ),
              ListTile(
                leading: Icon(Icons.settings, color: org1),
                title: Text("Settings",
                    style: TextStyle(fontWeight: FontWeight.w400)),
              ),
              ListTile(
                leading: Icon(Icons.help, color: org1),
                title: Text("Help & FAQ",
                    style: TextStyle(fontWeight: FontWeight.w400)),
              ),
              Padding(
                padding: EdgeInsets.only(right: 220, left: 20, top: 40),
                child: MaterialButton(
                  padding: EdgeInsets.only(left: 30),
                  //minWidth: MediaQuery.of(context).size.width * 0.1,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(color: org1, width: 2)),
                  height: 45,
                  child: Row(
                    children: [
                      Icon(Icons.logout, color: org1),
                      Text(
                        "Log out",
                        style: TextStyle(color: org1),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
