import 'package:http/http.dart' as http;

class CarService {
  static String _authority = "localhost:44371";
  static String _unencodedPath = "api/cars";

  static Future<http.Response> fetchAlbum() {
    return http.get(Uri.https(_authority, _unencodedPath));
  }
}