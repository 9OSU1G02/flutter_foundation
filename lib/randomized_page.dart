import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'main.dart';

class RandomizedPage extends ConsumerWidget {
  const RandomizedPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomized = ref.watch(randomizedProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Randomized Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Text(
            randomized.generatedNumber?.toString() ?? "No number generated",
            style: const TextStyle(fontSize: 24),
          ),
        )
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Generate"),
        onPressed: () {
          ref.read(randomizedProvider).generateRandomNumber();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
