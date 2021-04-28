import 'dart:html';
import 'dart:io';

import 'package:http/http.dart' as http;

class CarService {
  static String _apiUrl = "http://localhost:62884/api/cars";

  static Future<http.Response> fetchAlbum() {
    return http.get(Uri.http('10.0.2.2:62884', 'api/cars'), headers: {
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials":
          "true", // Required for cookies, authorization headers with HTTPS
      "Access-Control-Allow-Headers":
          "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
      "Access-Control-Allow-Methods": "POST, OPTIONS"
    });
  }
}

// "Access-Control-Allow-Origin": "*", // Required for CORS support to work
// "Access-Control-Allow-Credentials": true, // Required for cookies, authorization headers with HTTPS
// "Access-Control-Allow-Headers": "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
// "Access-Control-Allow-Methods": "POST, OPTIONS"
