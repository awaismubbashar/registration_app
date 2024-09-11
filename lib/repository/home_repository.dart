import 'package:registration_app/model/album.dart';
import '../network/api_base_helper.dart';

class HomeRepository {
  ApiBaseHelper _helper = ApiBaseHelper();

  Future<List<Album>> fetchMovieList() async {
    final response = await _helper.request(url: 'albums/', method:  'GET');
    List<Album> result = (response as List).map((albumJson) => Album.fromJson(albumJson)).toList();

    return result;
  }
}
