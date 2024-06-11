import 'package:flutter/material.dart';

import 'choice_item.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    this.choices = const [],
  });

  final List<String> choices;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.purple,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Vos choix :',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 10),
            _buildChoices(context),
          ],
        ),
      ),
    );
  }

  Widget _buildChoices(BuildContext context) {
    if (choices.isEmpty) {
      return Text(
        'Cliquez sur les choix en dessous',
        style: Theme.of(context).textTheme.titleLarge,
      );
    }

    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: choices.map((choice) {
        return ChoiceItem(
          choice: choice,
        );
      }).toList(),
    );
  }
}
