import 'package:fast_food/utils/colors.dart';
import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  late Size size = MediaQuery.of(context).size;
  bool isSelected=true;
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
              Container(
                padding: EdgeInsets.all(6),
                margin: EdgeInsets.only(bottom: 15),
                // height: MediaQuery.of(context).size.height*0.07,
                // width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                  border: Border.all(color: Colors.black,width: 1)
                ), // Set your preferred color
                child: TabBar(
                  indicatorColor: Colors.white,
                  //unselectedLabelColor: Colors.grey,

                  tabs: [
                    Tab(
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width*0.45,
                        decoration: BoxDecoration(
                          color: org2,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: Text("Food items",style: TextStyle(
                            color: Colors.white70,
                            fontSize: 15
                          ),),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 100,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: Text("Restaurants",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15
                          ),),
                        ),
                      ),
                    ),



                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      color: Colors.yellow,
                      child: Center(
                        child: Text("avinash"),
                      ),
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
