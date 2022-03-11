import 'package:flutter/material.dart';
import 'package:lab4/services/agify.dart';

class Home extends StatefulWidget {
  final AgifyService agifyService;

  const Home({Key? key})
      : agifyService = const AgifyService(),
        super(key: key);

  // Override method to create the state.
  @override
  State<Home> createState() =>
      _HomeState(

      );
}

// State class.
class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  int? _age;

  void onSubmit() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final calculateAge = await widget.agifyService.getAgeFromName(_name!);
      setState(() {
        _age = calculateAge;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Age calculator"),
      ),
      body: Column(
        children: [
          Form(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      helperText: "Input Name...",
                      labelText: "Name",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter the name";
                      }
                      return null;
                    },
                    onSaved: (String? value) {
                      setState(() {
                        if (value == null) _name = value;
                      });
                    },
                  ),
                ),
                ElevatedButton(
                    onPressed: onSubmit,
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: "Lato"),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          if(_age != null)
            Center(
              child: Text(
                "Age is $_age",
                style: const TextStyle(
                    fontFamily: "Lato",
                    fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            )
        ],
      ),
    );
  }
}
