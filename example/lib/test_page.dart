import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Single selection dropdown",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomDropDown(
                  // initialValue: "name4",
                  validator: (value) {
                    if (value == null) {
                      return "Required field";
                    } else {
                      return null;
                    }
                  },
                  dropDownList: [
                    DropDownValues(name: 'name1', value: "value1"),
                    DropDownValues(name: 'name2', value: "value2"),
                    DropDownValues(name: 'name3', value: "value3"),
                    DropDownValues(name: 'name4', value: "value4"),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Single selection dropdown with search option",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomDropDown(
                  dropDownList: [
                    DropDownValues(name: 'name1', value: "value1"),
                    DropDownValues(name: 'name2', value: "value2"),
                    DropDownValues(name: 'name3', value: "value3"),
                    DropDownValues(name: 'name4', value: "value4"),
                  ],
                  enableSearch: true,
                  onChanged: (val) {},
                ),
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  "multi selection dropdown",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomDropDown.multiSelection(
                  validator: (value) {
                    if (value == null) {
                      return "Required field";
                    } else {
                      return null;
                    }
                  },
                  dropDownList: [
                    DropDownValues(name: 'name1', value: "value1"),
                    DropDownValues(
                        name: 'name2',
                        value: "value2",
                        toolTipMsg:
                            "DropDownButton is a widget that we can use to select one unique value from a set of values"),
                    DropDownValues(name: 'name3', value: "value3"),
                    DropDownValues(
                        name: 'name4',
                        value: "value4",
                        toolTipMsg:
                            "DropDownButton is a widget that we can use to select one unique value from a set of values"),
                  ],
                  onChanged: (val) {},
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          if (!_formKey.currentState!.validate()) {}
        },
        label: const Text("Submit"),
      ),
    );
  }
}