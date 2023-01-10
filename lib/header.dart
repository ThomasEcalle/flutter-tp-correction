import 'package:flutter/material.dart';

import 'choice_item.dart';

class Header extends StatelessWidget {
  final List<String> selectedChoices;

  const Header({
    Key? key,
    this.selectedChoices = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.deepPurpleAccent,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 60,
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Vos choix :",
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 10),
            _buildSelectedChoices(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSelectedChoices(BuildContext context) {
    if (selectedChoices.isEmpty) {
      return Text(
        "Cliquez sur les choix en dessous !",
        style: Theme.of(context).textTheme.headline2,
      );
    }

    return Wrap(
      spacing: 10,
      runSpacing: 5,
      children: selectedChoices.map((String choice) {
        return ChoiceItem(
          choice: choice,
        );
      }).toList(),
    );
  }
}
