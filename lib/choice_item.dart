import 'package:flutter/material.dart';

class ChoiceItem extends StatelessWidget {
  final String choice;
  final bool isSelected;
  final VoidCallback? onTap;

  const ChoiceItem({
    Key? key,
    required this.choice,
    this.isSelected = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.amber : Colors.grey[200],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            choice,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}
