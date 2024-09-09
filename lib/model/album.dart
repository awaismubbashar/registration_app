import 'dart:ffi';

class Album {
  String userId;
  int id;
  String title;

  Album({required this.userId, required this.id, required this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'].toString(),
      id: json['id'],
      title: json['title'],
    );
  }
}
