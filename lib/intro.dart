import 'package:flutter/material.dart';
import 'create_project.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [
                    0.01,
                    0.4
                  ],
                  colors: [
                    Color.fromARGB(255, 254, 172, 164),
                    Colors.white,
                  ]),
            ),
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 200,
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Organize your user stories in a more thoughtful way with LUMINA',
                  style: TextStyle(height: 1.2, fontSize: 26),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 25, 0, 50),
                  child: Image.asset('assets/artwork.png'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateProject()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      minimumSize: const Size(280, 55),
                      backgroundColor: const Color(0xFFFF6857),
                      textStyle: const TextStyle(fontSize: 25),
                    ),
                    child: const Text('Let\'s Start'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
