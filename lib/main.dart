// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture/utils/app_constants.dart';
import 'package:provider/provider.dart';
import 'views/login_screen.dart';
import 'views/post_list_screen.dart';
import 'viewmodels/post_viewmodel.dart';
import 'viewmodels/user_viewmodel.dart';
import 'services/api_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PostViewModel(
              apiService: ApiService(baseUrl: AppConstants.apiBaseUrl)),
        ),
        ChangeNotifierProvider(
          create: (context) => UserViewModel(
            apiService: ApiService(baseUrl: AppConstants.apiBaseUrl),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter MVVM Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/login',
        routes: {
          '/': (context) => PostListScreen(),
          '/login': (context) => LoginScreen(),
        },
      ),
    );
  }
}
