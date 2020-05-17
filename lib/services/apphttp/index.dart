import 'package:http/http.dart' as http;

class AppHttp {
  
  static get(String url, var headers) {
    return http.get(url, headers: headers);
  }

  static post(String url, var payload, var headers) {
    return http.post(url, body: payload, headers: headers);
  }

  static put(String url, var payload, var headers) {
    return http.put(url, body: payload, headers: headers);
  }

  static delete(String url, var headers) {
    return http.delete(url, headers: headers);
  }

}
