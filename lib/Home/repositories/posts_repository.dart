import 'dart:convert';

import 'package:ceiba_prueba/Home/models/post_model.dart';
import 'package:http/http.dart' as http;

class PostsRepository {
  static final PostsRepository _instance = PostsRepository._();
  PostsRepository._();
  static PostsRepository getInstance() => _instance;

  Future<List<PostModel>> getPosts(int userId) async {
    try {
      var url = Uri.parse(
          'https://jsonplaceholder.typicode.com/posts?userId=$userId');
      var response = await http.get(url);
      final data = json.decode(response.body);
      List<PostModel> list = [];
      for (var post in data) {
        list.add(PostModel.fromJson(post));
      }
      return list;
    } catch (e) {
      return [];
    }
  }
}
