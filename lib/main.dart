import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
      home: Scaffold(
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
                child: Image.asset('/assets/artwork.png'),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Hey guys!");
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
    );
  }
}
