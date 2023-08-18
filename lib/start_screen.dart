import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(
                112, 255, 255, 255), //Made the logo transparent
          ),
          const SizedBox(height: 80),
          Text(
            'Learn flutter in a fun way!',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              onPressed: startQuiz,
              label: const Text('Start quiz'))
        ],
      ),
    );
  }
}
