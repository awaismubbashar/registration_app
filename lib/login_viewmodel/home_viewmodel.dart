import 'package:flutter/cupertino.dart';
import 'package:registration_app/network/response.dart';
import 'package:registration_app/repository/home_repository.dart';
import '../model/album.dart';

class HomeViewmodel extends ChangeNotifier {
  List<Album> albums = [];
  ApiResponse<List<Album>> _apiResponse = ApiResponse.loading('Fetching albums...');
  ApiResponse<List<Album>> get apiResponse => _apiResponse;

  final HomeRepository homeRepository;
  HomeViewmodel(this.homeRepository);

  Future<void> fetchAlbum() async {
    _apiResponse = ApiResponse.loading('Loading...');
    Future.microtask(() => notifyListeners());
    try {
      List<Album> movies = await homeRepository.fetchMovieList();
      albums = movies;
      _apiResponse = ApiResponse.completed(movies);
    } catch (e) {
      _apiResponse = ApiResponse.error(e.toString());
    }
    Future.microtask(() => notifyListeners());
  }
}
