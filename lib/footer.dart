import 'package:flutter/material.dart';

import 'choice_item.dart';

class Footer extends StatelessWidget {
  final List<String> choices;
  final List<String> selectedChoices;
  final void Function(String) onChoiceSelected;

  const Footer({
    Key? key,
    this.choices = const [],
    this.selectedChoices = const [],
    required this.onChoiceSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 5,
      ),
      child: Wrap(
        spacing: 10,
        runSpacing: 4,
        children: choices.map((String choice) {
          return ChoiceItem(
            choice: choice,
            isSelected: selectedChoices.contains(choice),
            onTap: () {
              onChoiceSelected(choice);
            },
          );
        }).toList(),
      ),
    );
  }
}
