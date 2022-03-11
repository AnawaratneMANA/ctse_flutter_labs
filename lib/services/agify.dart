import 'dart:convert';

import 'package:http/http.dart';

class AgifyService {

  // Static Endpoint.
  static const String endpoint = "https://api.agify.io";

  // Constructor.
  const AgifyService ();

  // API method.
  Future<int?> getAgeFromName(String name) async {
    Response response = await get(
      Uri.parse(endpoint).replace(queryParameters: {
        "name" : name,
      })
    );

    // Handling the response and convert the details into a Map.
    if(response.statusCode == 200){
      return jsonDecode(response.body)["age"];
    }


    // Handling error during fetching data.
    throw Exception("Error getting the age");
  }
}