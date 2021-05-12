import 'package:http/http.dart' as http;

class BrandService {
  static String _authority = "10.0.2.2:5001";
  static String _unencodedPath = "api/brands";

  static Future<http.Response> getAll() async {
    return await http.get(Uri.https(_authority, _unencodedPath));
  }
}