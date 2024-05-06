import 'dart:convert';

import 'package:http/http.dart' as http;

Future<dynamic> fetchData() async {
  final String apiUrl = 'https://rubidya.com/api/users/get-media';
  final String token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NjBiZmUxODE3ZmYzZjBkMmZjMmQwNGUiLCJpYXQiOjE3MTQ3MTkyMDMsImV4cCI6MTc4MzgzOTIwM30.HfsYDcVEzMsdi6pU24IzHzmGAxfDQ2NAJYIptOAu_9I';




  try {
    final response = await http.get(
      Uri.parse(apiUrl),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      return [decodedData];
    } else {
      throw 'Request failed with status: ${response.statusCode}';
    }
  } catch (e) {
    throw 'Error: $e';
  }
}
