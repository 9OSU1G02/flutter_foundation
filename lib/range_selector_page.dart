import 'package:flutter/material.dart';
import 'package:flutter_foundation/randomized_page.dart';
import 'package:flutter_foundation/range_selector_form.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RangeSelectorPage extends HookWidget {
  RangeSelectorPage({super.key, required this.title});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final String title;

  @override
  Widget build(BuildContext context) {
    final minimum = useState(0);
    final maximum = useState(0);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Range"),
      ),
      body: RangeSelectorForm(
          formKey: formKey,
          minimumSetter: (value) {
            minimum.value = value;
          },
          maximumSetter: (value) {
            maximum.value = value;
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (formKey.currentState?.validate() == true) {
              formKey.currentState?.save();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => RandomizedPage(
                      minimum: minimum.value, maximum: maximum.value)));
            }
          },
          child: const Icon(Icons.arrow_forward)),
    );
  }
}

class RangeSelectorTextFormField extends StatelessWidget {
  const RangeSelectorTextFormField({
    super.key,
    required this.labelText,
    required this.intValueSetter,
  });
  final void Function(int value) intValueSetter;
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(), labelText: labelText),
      keyboardType:
          const TextInputType.numberWithOptions(decimal: false, signed: true),
      onSaved: (newValue) {
        intValueSetter(int.parse(newValue ?? "0"));
      },
      validator: (value) {
        if (value == null || int.tryParse(value) == null) {
          return "Please enter a valid number";
        }
        return null;
      },
    );
  }
}
