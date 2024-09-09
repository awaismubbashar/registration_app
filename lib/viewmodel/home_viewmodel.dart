import 'package:flutter/cupertino.dart';
import '../model/album.dart';
import '../network/network.dart';

class HomeViewmodel extends ChangeNotifier {
  String abc = 'abc';
  final NetworkService networkService;
  HomeViewmodel(this.networkService);

  Future<void> fetchAlbum() async {
    try {
      List<Album> albums = await networkService.fetchAlbum();
      abc = albums.first.title;
      notifyListeners();
    } catch (e) {
      print('Error fetching albums: $e');
      throw e;
    }
  }
}