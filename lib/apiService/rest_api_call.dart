import 'dart:convert';
import 'dart:developer';
import 'package:fast_food/apiService/request.dart';
import 'package:flutter/material.dart';
import '../model/all_user_data.dart';
class RestApiCall extends StatefulWidget {
  const RestApiCall({Key? key}) : super(key: key);

  @override
  State<RestApiCall> createState() => _RestApiCallState();
}

class _RestApiCallState extends State<RestApiCall> {
  List<Data> avinash = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RestApiCall"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: avinash.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ListTile(
                        leading: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                                height: 40,
                                width: 40,
                                child: Image.network(avinash[index].avatar!))),
                        title: Text(avinash[index].firstName!),
                        tileColor: Colors.cyan,
                        subtitle: Text(avinash[index].email!),
                        trailing:  Text(avinash[index].id!.toString()),

                      ),
                    ),
                    Text(avinash[index].lastName!)
                  ],
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchuser,
        elevation: 10,
        child: const Text("Apihit"),
      ),
    );
  }

  void fetchuser() async {
    String url = 'https://reqres.in/api/users?page=2';

    final result = await Request.requestGet(url: url);

    if (result != null) {
      AllUserData response = AllUserData.fromJson(result);

      avinash = response.data!;

      //  final abs = response;
    } else {
      print(
          '--------------data no found --------------\n api call page Line number 72');
    }
    log('this isa response ' + jsonEncode(result));
  }
}
