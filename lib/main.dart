import 'package:flutter/material.dart';

import 'one_page.dart';
import 'two_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green),
      initialRoute: '/',
      routes: {
        '/': (_) => const OnePage(),
        '/twoPage': (_) => const TwoPage(),
      },
    );
  }
}
