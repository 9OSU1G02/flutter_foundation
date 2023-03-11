import 'package:flutter/material.dart';
import 'package:flutter_foundation/range_selector_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Randomized',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RangeSelectorPage(title: 'Flutter De mo Home Page'),
    );
  }
}
