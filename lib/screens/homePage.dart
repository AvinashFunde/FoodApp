import 'package:flutter/material.dart';

import 'login_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color org1 = Color(0xFFFE8201);
  Color org2 = Color(0xFFFB3C04);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,end: Alignment.bottomCenter,
            colors: [org1,org1,org2],
          )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.4),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                  },
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Image(image: AssetImage("assets/Splash.png"),),
                  ),
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Fast ",
                style: TextStyle(
                   color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 35
                ),),
                Text(" Food",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w900,
                      fontSize: 35
                  ),),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
