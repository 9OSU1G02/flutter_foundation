import 'dart:math';

import 'package:flutter/material.dart';

class RandomizedPage extends StatefulWidget {
  const RandomizedPage({
    super.key,
    required this.minimum,
    required this.maximum,
  });
  final int minimum;
  final int maximum;
  @override
  State<RandomizedPage> createState() => _RandomizedPageState();
}

class _RandomizedPageState extends State<RandomizedPage> {
  int? _generatedNumber;
  final randomGenerator = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Randomized Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Text(
            _generatedNumber?.toString() ??
                "Press the button to generate a number",
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Generate"),
        onPressed: () {
          setState(() {
            _generatedNumber =
                randomGenerator.nextInt(widget.maximum - widget.minimum) +
                    widget.minimum;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
