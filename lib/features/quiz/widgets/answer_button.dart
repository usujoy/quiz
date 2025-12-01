import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.option, this.onTap, {super.key});

  final String option;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.white,
      ),
      child: Text(option, textAlign: TextAlign.center,),
    );
  }
}
