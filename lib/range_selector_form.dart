import 'package:flutter/material.dart';
import 'package:flutter_foundation/randomized_change_notifier.dart';
import 'package:flutter_foundation/range_selector_page.dart';
import 'package:provider/provider.dart';

typedef IntValueSetter = void Function(int value);

class RangeSelectorForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const RangeSelectorForm(
      {super.key,
      required this.formKey});
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RangeSelectorTextFormField(
              labelText: 'Minimum',
              intValueSetter: (value) => context.read<RandomizedChangeNotifier>().minimum = value,
            ),
            const SizedBox(height: 12),
            RangeSelectorTextFormField(
              labelText: 'Maximum',
              intValueSetter: (value) => context.read<RandomizedChangeNotifier>().maximum = value,
            )
          ],
        ),
      ),
    );
  }
}
