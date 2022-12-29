import 'package:flutter/material.dart';
import 'pages/create_artisan_page1.dart';

import 'pages/create_artisan_page2.dart';
import 'pages/create_artisan_page3.dart';
import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/create_artisan_page1': (context) => const CreateArtisanPage1(),
        '/create_artisan_page2': (context) => const CreateArtisanPage2(),
        '/create_artisan_page3': (context) => const CreateArtisanPage3(),
      },
    );
  }
}
