import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.text, this.func, {super.key});

  final String text;
  final void Function() func;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: func,
        style: ElevatedButton.styleFrom(
          
          padding: const EdgeInsets.all(20),
          backgroundColor: const Color.fromARGB(255, 20, 3, 49),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
        ),
        child: Text(text, textAlign: TextAlign.center, style: const TextStyle(fontSize: 16),),
      ),
    );
  }
}
