import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/question_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 60,
          ),
           Text(
            ' Learn Flutter the fun way!',
            style: GoogleFonts.lato(
                color: const Color.fromARGB(225, 237, 223, 252),
                 fontSize: 24,          ),
           ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed:
                  // () {
                // Get.to(const QuestionScreen());
              // },
                 startQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_forward),
              label: const Text('Start Quiz'))
        ],
      ),
    );
  }
}
