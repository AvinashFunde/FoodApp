import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';


class Verification_Screen extends StatefulWidget {
  const Verification_Screen({super.key});

  @override
  State<Verification_Screen> createState() => _Verification_ScreenState();
}

class _Verification_ScreenState extends State<Verification_Screen> {
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
              Center(
                child: OtpTextField(

                  focusedBorderColor: org1,
                  fieldWidth: 60,
                  borderRadius: BorderRadius.all(Radius.circular(10),),
                 showFieldAsBox: true,

                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have't receive a code? ",
                    style: TextStyle(
                        color: Colors.black54,
                        //fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Resend",
                        style: TextStyle(
                            color: org1,
                            fontSize: 15,
                            decoration: TextDecoration.underline),
                      )),
                ],
              ),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width * 0.9,
                onPressed: () {},
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
