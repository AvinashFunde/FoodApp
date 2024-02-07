import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;


class Request {

  static requestGet({required String url, String? token}) async {
    try {
      final response = await http.get(
          Uri.parse(url),

          headers: {
            "Content-Type": "application/json",
            // "Authorization": "Bearer $token"
          });
      if (response.statusCode == 200) {
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
      final response = await http.post(
          Uri.parse(url),
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
}