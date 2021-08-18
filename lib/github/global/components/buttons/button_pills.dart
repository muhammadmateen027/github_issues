import 'package:flutter/material.dart';

class ButtonPills extends StatelessWidget {
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final String label;

  const ButtonPills(
      {Key? key,
      required this.onTap,
      this.backgroundColor = Colors.transparent,
      this.borderColor = Colors.grey,
      this.textColor = Colors.black,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(width: 0.5, color: borderColor),
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Text(
          label,
          style: theme.textTheme.bodyText2!.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
