import 'package:flutter/material.dart';
import 'package:lab4/services/agify.dart';

class Home extends StatefulWidget{
  final AgifyService agifyService;

  const Home({Key? key}) :
        agifyService = const AgifyService(),
        super(key: key);

  // Override method to create the state.
  @override
  State<Home> createState() => _HomeState();

}

// State class.
class _HomeState extends State<Home>{
  final _formKey = GlobalKey<FormState>();
  String? name;
  int? age;

  @override
  Widget build(BuildContext context){
    return Column(

    );
  }
}