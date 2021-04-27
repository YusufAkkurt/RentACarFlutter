import 'package:http/http.dart' as http;

class CarService {
  static String _apiUrl = "localhost:44371";
  static String _apiUncodedPath = "api/cars";

  static Future getAll() {
    Uri url = Uri.https(_apiUrl, _apiUncodedPath);
    return http.get(url);
  }
}
