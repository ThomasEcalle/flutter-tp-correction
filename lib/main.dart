import 'package:flutter/material.dart';
import 'package:tp_correction/footer.dart';
import 'package:tp_correction/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> _choices = const [
    'Pétanque',
    'Foot',
    'Cuisine',
    'Etudes',
    'Sports',
    'Jeux-Vidéos',
    'Gymnastique',
  ];

  final List<String> _selectedChoices = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Header(
                choices: _selectedChoices,
              ),
            ),
            Expanded(
              child: Footer(
                choices: _choices,
                selectedChoices: _selectedChoices,
                onChoiceTap: _onChoiceTap,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onChoiceTap(String newChoice) {
    setState(() {
      if (_selectedChoices.contains(newChoice)) {
        _selectedChoices.remove(newChoice);
      } else {
        _selectedChoices.add(newChoice);
      }
    });
  }
}
