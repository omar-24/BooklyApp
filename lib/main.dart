import 'package:booklyapp/feature/splash/presentation/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:splashscreen(),
    );
  }
}

