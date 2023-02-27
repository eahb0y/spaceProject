import 'package:flutter/material.dart';

import '../constants.dart';

class MyButton extends StatelessWidget {
  final String label;
  final Function()? onTab;
  const MyButton({
    Key? key,
    required this.onTab,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(10.0),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(8.0)),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: textStyle,
        ),
      ),
    );
  }
}
