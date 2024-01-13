import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../models/post.dart';
import '../services/api_service.dart';

class PostViewModel extends ChangeNotifier {
  final ApiService apiService;

  PostViewModel({required this.apiService});

  List<Post> posts = [];

  Future<void> fetchPosts() async {
    try {
      posts = await apiService.getPosts();
      notifyListeners();
    } catch (e) {
      print('Error: $e');
    }
  }
}
