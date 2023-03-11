import 'package:flutter/material.dart';
import 'package:flutter_foundation/randomized_change_notifier.dart';
import 'package:flutter_foundation/range_selector_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
void main() {
  runApp(const MyApp());
}

final randomizedProvider = ChangeNotifierProvider((ref) => RandomizedChangeNotifier());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Randomized',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: RangeSelectorPage(title: 'Flutter De mo Home Page'),
      ),
    );
  }
}
