import 'package:fast_food/screens/signUp.dart';
import 'package:flutter/material.dart';

import 'bottamNAvBar.dart';
import 'discoveryPage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Color org1 = Color(0xFFFE8201);
  Color org2 = Color(0xFFFB3C04);
  Color btn = Color(0xFFF94F1A);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              Text(
                "Login ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 35),
              ),
              SizedBox(height: 35),
              Text(
                "Email ",
                style: TextStyle(
                    color: Colors.black87,
                    //fontWeight: FontWeight.w700,
                    fontSize: 17),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    hintText: "Your email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: org2,
                    ))),
              ),
              SizedBox(height: 30),
              Text(
                "Password ",
                style: TextStyle(
                    color: Colors.black87,
                    //fontWeight: FontWeight.w700,
                    fontSize: 17),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: org2,
                    ))),
              ),
              Padding(
                padding: EdgeInsets.only(left: 240),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                          color: org1,
                          fontSize: 15,
                          decoration: TextDecoration.underline),
                    )),
              ),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width * 0.9,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomNav()));
                },
                color: org2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                height: 60,
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                        color: Colors.black54,
                        //fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: org1,
                            fontSize: 15,
                            decoration: TextDecoration.underline),
                      )),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  "-----------------   Sign in with   ------------------ ",
                  style: TextStyle(
                      color: Colors.black54,
                      //fontWeight: FontWeight.w700,
                      fontSize: 17),
                ),
              ),
              SizedBox(height: 25),
              MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * 0.9,
                  elevation: 0,
                  onPressed: () {},
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(color: Colors.black)),
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/Facebook_Logo.png',
                        // Replace with the actual path to your asset image
                        width: 20, // Adjust the width as needed
                        height: 20, // Adjust the height as needed
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Continue with Facebook",
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      )
                    ],
                  )),
              SizedBox(height: 5),
              MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * 0.9,
                  elevation: 0,
                  onPressed: () {},
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(color: Colors.black)),
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/google_logo.png',
                        // Replace with the actual path to your asset image
                        width: 24, // Adjust the width as needed
                        height: 24, // Adjust the height as needed
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Continue with Google",
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
