import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_foundation/randomized_change_notifier.dart';
import 'package:provider/provider.dart';

class RandomizedPage extends StatelessWidget {
  const RandomizedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Randomized Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Consumer<RandomizedChangeNotifier>(
              builder: (context, notifier, child) {
            return Text(
              notifier.generatedNumber == null
                  ? "Tap Generate"
                  : notifier.generatedNumber.toString(),
              style: const TextStyle(fontSize: 30),
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Generate"),
        onPressed: () {
          context.read<RandomizedChangeNotifier>().generateRandomNumber();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
