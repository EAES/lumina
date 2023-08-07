import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Image.asset('assets/logo.png'),
            ),
            leadingWidth: 220,
            backgroundColor: const Color(0x00000000),
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
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                const Text(
                  'Organize your user stories in a more thoughtful way with LUMINA',
                  style: TextStyle(height: 1.2, fontSize: 26),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 50, 0, 80),
                  child: Image.asset('assets/artwork.png'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondRoute()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(280, 55),
                      backgroundColor: const Color(0xFFFF6857),
                      textStyle: const TextStyle(fontSize: 25),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                  child: const Text('Let\'s Start'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
