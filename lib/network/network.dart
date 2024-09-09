
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/album.dart';

class NetworkService {
  // Fetch albums from API
  Future<List<Album>> fetchAlbum() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/'));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Album.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load album');
    }
  }
}