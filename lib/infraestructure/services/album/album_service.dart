//CRUD
import 'dart:convert';

import 'package:flutter_http_fetch/domain/album.dart';
import 'package:http/http.dart' as http;

Future<Album> getAlbums() async {

  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to load album');
  }
}