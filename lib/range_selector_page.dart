import 'package:flutter/material.dart';
import 'package:flutter_foundation/randomizer_page.dart';
import 'package:flutter_foundation/range_selector_form.dart';

class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({super.key, required this.title});

  final String title;

  @override
  State<RangeSelectorPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<RangeSelectorPage> {
  final formKey = GlobalKey<FormState>();
  int _minimum = 0;
  int _maximum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Range"),
      ),
      body: RangeSelectorForm(
          formKey: formKey,
          minimumSetter: (value) {
            _minimum = value;
          },
          maximumSetter: (value) {
            _maximum = value;
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (formKey.currentState?.validate() == true) {
              formKey.currentState?.save();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      RandomizedPage(minimum: _minimum, maximum: _maximum)));
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
