import 'package:firebase_flutter/src/constants/sizes.dart';
import 'package:flutter/material.dart';

class Label extends StatefulWidget {
  final String label;
  final Widget child;
  const Label({super.key, required this.label, required this.child});

  @override
  State<Label> createState() => _LabaledInputState();
}

class _LabaledInputState extends State<Label> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSizes.defaultBtwItems,
      children: <Widget>[
        Text(widget.label, style: Theme.of(context).textTheme.bodyLarge),
        widget.child,
      ],
    );
  }
}
