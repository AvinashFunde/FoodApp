import 'dart:convert';
import 'dart:developer';
import 'package:fast_food/apiService/login_responce.dart';
import 'package:fast_food/apiService/reposiratory.dart';
import 'package:fast_food/screens/signUp.dart';
import 'package:flutter/material.dart';
import '../apiService/login_request.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Color org1 = Color(0xFFFE8201);
  Color org2 = Color(0xFFFB3C04);
  Color btn = Color(0xFFF94F1A);

  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding:  EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Text(
                "Login ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                    fontFamily: 'PoppinsBold'),
              ),
              SizedBox(height: 35),
              Text(
                "Email ",
                style: TextStyle(
                    // color: Colors.black87,
                    fontFamily: 'PoppinsMedium',
                    fontSize: 17),
              ),
              SizedBox(height: 10),
              TextField(
                controller: emailController,
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
                    fontFamily: 'PoppinsMedium',
                    fontSize: 17),
              ),
              SizedBox(height: 10),
              TextField(
                controller: passwordController,
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
                          fontFamily: 'PoppinsRegular',
                          decoration: TextDecoration.underline),
                    )),
              ),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width * 0.9,
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => BottomNav()));
                  //LoginRequest();
                  String email = emailController.text;
                  String password = passwordController.text;

                  print('Email: $email');
                  print('Password: $password');

                },
                color: org2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                height: 60,
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'PoppinsRegular',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'PoppinsRegular',
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
                            fontFamily: 'PoppinsRegular',
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
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          fontFamily: 'PoppinsMedium',
                        ),
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
                        style: TextStyle(color: Colors.black54, fontSize: 16,fontFamily: 'PoppinsMedium',),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  static Future<Map<String, dynamic>?> loginUser(LoginRequest request) async {
    // Define the API endpoint
    String apiUrl = "https://reqres.in/api/login";

    try {
      // Convert the request model to JSON
      Map<String, dynamic> requestData = request.toJson();

      // Make the HTTP POST request
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(requestData),
      );

      // Check if the response is successful (status code 200)
      if (response.statusCode == 200) {
        // Parse the response body
        Map<String, dynamic> responseData = json.decode(response.body);
        return responseData;
      } else {
        // Print the response status code (for debugging purposes)
        print('API request failed with status code: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      // Print any exceptions that occur during the request (for debugging purposes)
      print('Exception during API request: $e');
      return null;
    }
  }

  void getLoginResponse() async {


    // LoginRequest requestModel = LoginRequest();
    //
    // requestModel.email = emailController.text;
    // requestModel.password = passwordController.text;
    //
    // log("hitverifymobileApi");
    //
    // LoginResponce? responseModel =
    // await CommonRepository.hitLoginAPI(requestModel);
    //
    // if (responseModel != null) {
    //   if (responseModel.status == 200) {
    //     //SHDFClass.saveStringValue(KeyConstants.userMobileNo, mobileNoController.text.trim());
    //     SHDFClass.saveIntValue(KeyConstants.userId, responseModel.payload!.id!);
    //     log("userID : ${responseModel.payload!.id!}");
    //
    //     SHDFClass.saveStringValue(
    //         KeyConstants.userEmailId, responseModel.payload!.email!);
    //     SHDFClass.saveStringValue(
    //         KeyConstants.userName, responseModel.payload!.name!);
    //     SHDFClass.saveStringValue(
    //         KeyConstants.userMobileNo, responseModel.payload!.mobileNo!);
    //     SHDFClass.saveStringValue(
    //         KeyConstants.token, responseModel.payload!.token!);
    //     SHDFClass.saveStringValue(KeyConstants.deviceId, diviceToken!);
    //     log("successMSG - ${responseModel.msg.toString()}");
    //
    //     countdownController.pause();
    //
    //     otpController.clear();
    //     Get.to(() => const VerifySucceedScreen());
    //
    //     //Get.back();
    //   } else {
    //     showDialog(
    //       context: Get.context!,
    //       builder: (BuildContext context1) => OKDialog(
    //         title: "",
    //         descriptions: responseModel.msg,
    //         img: errorImage,
    //       ),
    //     );
    //   }
    // }
  }

}
