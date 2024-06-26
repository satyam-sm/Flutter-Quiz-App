//First page of app 
//accecpts SwitchScreen function which is used to chage screen to Question screen
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.getSwitchScreen, {super.key});
  final void Function() getSwitchScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.9,
            child: Image.asset(
              'assets/images/quiz-logo.png',
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          const Text(
            '👇 Lets Start the Quiz 👇',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 25,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            onPressed: getSwitchScreen,
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                padding: const EdgeInsets.all(16), // Add padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
            icon: const Icon(
              Icons.arrow_circle_right_sharp,
              color: Colors.white,
            ),
            label: const Text(
              'START QUIZ',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
