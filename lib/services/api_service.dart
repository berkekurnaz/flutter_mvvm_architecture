import 'dart:convert';
import 'package:flutter_mvvm_architecture/utils/app_constants.dart';
import 'package:http/http.dart' as http;
import '../models/post.dart';
import '../models/user.dart';

class ApiService {
  final String baseUrl;

  ApiService({required this.baseUrl});

  Future<List<Post>> getPosts() async {
    final response = await http.get(Uri.parse('$baseUrl/posts'));
    if (response.statusCode == 200) {
      Iterable jsonResponse = json.decode(response.body);
      return jsonResponse.map((post) => Post.fromJson(post)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }

  Future<bool> loginUser(User user) async {
    try {
      if (user.username == AppConstants.defaultUsername &&
          user.password == AppConstants.defaultPassword) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print('Error: $e');
      return false;
    }
  }
}
