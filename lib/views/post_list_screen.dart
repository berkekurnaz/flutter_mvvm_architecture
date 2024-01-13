import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/post_viewmodel.dart';

class PostListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<PostViewModel>(context);
    viewModel.fetchPosts();

    return Scaffold(
      appBar: AppBar(
        title: Text('Post List'),
      ),
      body: ListView.builder(
        itemCount: viewModel.posts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(viewModel.posts[index].title),
            subtitle: Text(viewModel.posts[index].body),
          );
        },
      ),
    );
  }
}
