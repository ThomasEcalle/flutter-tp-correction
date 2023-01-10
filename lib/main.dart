import 'package:flutter/material.dart';

import 'footer.dart';
import 'header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headline2: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          bodyText1: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({super.key});

  final List<String> choices = [
    "cinema",
    "petanque",
    "fitness",
    "Jeux vidéos",
    "basket",
    "shopping",
    "programamtion",
  ];

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> get choices => widget.choices;
  final List<String> _selectedChoices = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Header(
              selectedChoices: _selectedChoices,
            ),
          ),
          Expanded(
            child: Footer(
              choices: choices,
              selectedChoices: _selectedChoices,
              onChoiceSelected: _onChoiceSelected,
            ),
          ),
        ],
      ),
    );
  }

  void _onChoiceSelected(String choice) {
    setState(() {
      if (_selectedChoices.contains(choice)) {
        _selectedChoices.remove(choice);
      } else {
        _selectedChoices.add(choice);
      }
    });
  }
}
