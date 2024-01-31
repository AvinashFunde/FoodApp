import 'package:fast_food/screens/verification_screen.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                height: MediaQuery.of(context).size.height * 0.12,
              ),
              Text(
                "Resset Password ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 35),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, bottom: 35),
                child: Text(
                  "Please enter your email address to request a Password reset",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 17),
                ),
              ),
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
                    hintText: "Your name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: org2,
                    )
                  )
                ),
              ),
              SizedBox(height: 35),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width * 0.9,
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Verification_Screen()));
                },
                color: org2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                height: 60,
                child: Text(
                  "SignUp",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
