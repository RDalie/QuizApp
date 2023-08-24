import 'package:flutter/material.dart';
import 'package:quiz_app/mystery_page.dart';
import 'package:quiz_app/styled_text.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final Function(String to) startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',
              width: 300, color: const Color.fromARGB(148, 255, 255, 255)),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
                fontSize: 24, color: const Color.fromARGB(255, 225, 208, 255)),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () => startQuiz('questions-screen'),
            style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 96, 64, 145),
                padding: const EdgeInsets.all(20)),
            label: const StyledText('Start Quiz!'),
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MysteryPage()));
              },
              child: const Text('Go here'))
        ],
      ),
    );
  }
}
