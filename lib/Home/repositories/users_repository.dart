import 'dart:convert';

import 'package:ceiba_prueba/Home/models/user_model.dart';
import 'package:http/http.dart' as http;

class Repository {
  static final Repository _instance = Repository._();
  Repository._();
  static Repository getInstance() => _instance;

  Future<List<UserModel>> getUsers() async {
    try {
      var url = Uri.https('jsonplaceholder.typicode.com', '/users');
      var response = await http.get(url);
      final data = json.decode(response.body);
      List<UserModel> list = [];
      for (var user in data) {
        list.add(UserModel.fromJson(user));
      }
      return list;
    } catch (e) {
      return [];
    }
  }
}
