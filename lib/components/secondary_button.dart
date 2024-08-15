import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPress;
  const SecondaryButton({super.key,
  required this.icon,
  required this.onPress

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10)),
        child: Icon(
          icon,
          color: Theme.of(context).colorScheme.onSecondaryContainer,
          size: 25,
        ),
      ),
    );
  }
}
