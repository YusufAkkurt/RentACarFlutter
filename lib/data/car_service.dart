import 'package:http/http.dart' as http;

class CarService {
  static String _authority = "10.0.2.2:5001";
  static String _unencodedPath = "api/cars";

  static Future<http.Response> getAll() async {
    return await http.get(Uri.https(_authority, _unencodedPath));
  }

  static Future<http.Response> getAllCarDetails() async {
    String detailPath = "/get-details";
    return await http.get(Uri.https(_authority, _unencodedPath + detailPath));
  }
}
