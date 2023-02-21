import 'package:chatexample/screens/randomizer_page.dart';
import 'package:chatexample/screens/range_selector_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RangeSelectorScreen extends HookWidget {
  final formKey = GlobalKey<FormState>();
  RangeSelectorScreen({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    final min = useState<int>(0);
    final max = useState<int>(0);


    return Scaffold(
      appBar: AppBar(
        title: Text('Select Range'),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
        minValueSetter: (value) => min.value = value,
        maxValueSetter: (value) => max.value = value,
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_forward),
          onPressed: () {
            //Validate the Form
            if (formKey.currentState?.validate() == true) {
              formKey.currentState?.save();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RandomizerPage(
                    min: min.value,
                    max: max.value,
                  ))
              );
            }
            //Navigate to the generator page
          }),
    );
  }
}

