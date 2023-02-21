import 'package:chatexample/screens/randomizer_page.dart';
import 'package:chatexample/screens/range_selector_form.dart';
import 'package:flutter/material.dart';

class RangeSelectorScreen extends StatefulWidget {
  const RangeSelectorScreen({Key? key}) : super(key: key);

  @override
  _RangeSelectorScreenState createState() => _RangeSelectorScreenState();
}

class _RangeSelectorScreenState extends State<RangeSelectorScreen> {
  final formKey = GlobalKey<FormState>();
  int _min = 0;
  int _max = 0;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Range'),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
        minValueSetter: (value) => _min = value,
        maxValueSetter: (value) => _max = value,
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
                    min: _min,
                    max: _max,
                  ))
              );
            }
            //Navigate to the generator page
          }),
    );
  }
}
