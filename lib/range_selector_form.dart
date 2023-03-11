import 'package:flutter/material.dart';
import 'package:flutter_foundation/range_selector_page.dart';

typedef IntValueSetter = void Function(int value);

class RangeSelectorForm extends StatelessWidget {
  final IntValueSetter minimumSetter;
  final IntValueSetter maximumSetter;
  final GlobalKey<FormState> formKey;

  const RangeSelectorForm(
      {super.key,
      required this.minimumSetter,
      required this.maximumSetter,
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
              intValueSetter: minimumSetter,
            ),
            const SizedBox(height: 12),
            RangeSelectorTextFormField(
              labelText: 'Maximum',
              intValueSetter: maximumSetter,
            )
          ],
        ),
      ),
    );
  }
}
