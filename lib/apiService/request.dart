import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class ApiClient {


  static requestGet({required String url, String? token}) async {
    try {
      final response = await http.get(Uri.parse(url), headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token"
      });
      if (response.statusCode == 201) {
        print(jsonDecode(response.body));

        return json.decode(response.body);
      } else {
        log('Api Response is: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('error in api call request post line number 31 : ${e.toString()}');
    }
  }

  static requestPost(
      {required String url, required String requestBody, String? token}) async {
    try {
      final response = await http.post(Uri.parse(url),
          body: requestBody,
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token"
          });
      if (response.statusCode == 201 || response.statusCode == 200) {
        // print(jsonEncode(
        //     response.body));
        return json.decode(response.body);
      } else {
        log('Api Response is: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('error in api call request post line number 31 : ${e.toString()}');
    }
  }

 // Future<Map?> requestPostHeaderWithBody({required url, required requestBody}) async {
//   log('Api: $url');
//   log('RequestBody: $requestBody');
//
//
//
//   bool flagNet =  true;
//
//
//   if (flagNet) {
//     try {
//       final response = await http.post(
//
//           Uri.parse(url),
//           body: requestBody,
//           headers: {
//             "Content-Type": "application/json",
//             "Authorization":"Bearer ${MySharedPreference.getString(KeyConstants.keyApiToken)}"
//           });
//       Get.back(); //close progress dialog
//       log('Api Response  ${json.decode(response.body)}');
//
//       if (response.statusCode == 200) {
//         return json.decode(response.body);
//       } else {
//         log('Api Response: ${response.statusCode}');
//         Get.snackbar('Error', MyString.errorMsg, colorText: Colors.redAccent,
//             duration: const Duration(seconds: 5));
//         return null;
//       }
//     } catch (exception) {
//       Get.back(); //close progress dialog
//       log('Api Exception: ${MyString.exceptionMsg}');
//       Get.snackbar('Error', MyString.exceptionMsg, colorText: Colors.redAccent,
//           duration: const Duration(seconds: 5));
//       return null;
//     }
//   } else {
//     print('no Internet connection available ');
//     return null;
//   }

}
