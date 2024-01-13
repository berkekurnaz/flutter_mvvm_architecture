import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mvvm_architecture/main.dart';
import 'package:flutter_mvvm_architecture/utils/app_constants.dart';
import 'package:flutter_mvvm_architecture/viewmodels/post_viewmodel.dart';
import 'package:flutter_mvvm_architecture/viewmodels/user_viewmodel.dart';

void main() {
  testWidgets('Login screen widgets test', (WidgetTester tester) async {
    // Uygulamayı başlatın
    await tester.pumpWidget(MyApp());

    // Login ekranını kontrol edin
    expect(find.text('Login'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.byType(ElevatedButton), findsOneWidget);

    // Kullanıcı adı ve şifre girin
    await tester.enterText(
        find.byType(TextField).first, AppConstants.defaultUsername);
    await tester.enterText(
        find.byType(TextField).last, AppConstants.defaultPassword);

    // Login butonuna tıkla
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Post listesi ekranına geçti mi kontrol et
    expect(find.text('Post List'), findsOneWidget);

    // Kullanıcı adı ve şifreyi temizle
    await tester.enterText(find.byType(TextField).first, '');
    await tester.enterText(find.byType(TextField).last, '');

    // Login butonuna tıkla (hatalı giriş yapılacak)
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Hata mesajını kontrol et
    expect(find.text('Invalid username or password'), findsOneWidget);
  });
}
