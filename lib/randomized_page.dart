import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RandomizedPage extends HookWidget {
  RandomizedPage({
    super.key,
    required this.minimum,
    required this.maximum,
  });
  final int minimum;
  final int maximum;

  
  final randomGenerator = Random();
  @override
  Widget build(BuildContext context) {
    final generatedNumber = useState<int?>(null);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Randomized Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center( 
          child: Text(
            generatedNumber.value == null ? "Tap Generate" : generatedNumber.value.toString(),
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Generate"),
        onPressed: () {
          generatedNumber.value =
              randomGenerator.nextInt(maximum - minimum) + minimum;
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
