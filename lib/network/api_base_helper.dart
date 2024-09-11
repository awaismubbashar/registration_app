import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'exception_handler.dart';

class ApiBaseHelper {
  final String _baseUrl = "https://jsonplaceholder.typicode.com/";

  final Map<String, String> defaultHeaders = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer your_token_here',
  };

  Future<dynamic> request({
    required String url,
    required String method,
    Map<String, dynamic>? body, // dynamic? body for model
    Map<String, String>? headers,
  }) async {
    var responseJson;
    try {
      final Uri uri = Uri.parse(_baseUrl + url);
      http.Response response;

      final combinedHeaders = {
        ...defaultHeaders,
        if (headers != null) ...headers,
        'Content-Type': 'application/json',
      };

      switch (method.toUpperCase()) {
        case 'GET':
          response = await http.get(uri, headers: combinedHeaders);
          break;
        case 'POST':
          response = await http.post(
            uri,
            headers: combinedHeaders,
            body: jsonEncode(body),
          );
          break;
        case 'PUT':
          response = await http.put(
            uri,
            headers: combinedHeaders,
            body: jsonEncode(body),
          );
          break;
        case 'DELETE':
          response = await http.delete(uri, headers: combinedHeaders);
          break;
        default:
          throw UnsupportedError("Method not supported");
      }

      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        print(responseJson);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occurred while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
