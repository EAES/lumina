import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyVars {
  var hasProjects = true;
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
            // leading: Padding(
            //   padding: const EdgeInsets.only(left: 30),
            //   child: Image.asset('assets/logo.png'),
            // ),
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
                      if (MyVars().hasProjects == false) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateProject()),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ListProjects()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(280, 55),
                        backgroundColor: const Color(0xFFFF6857),
                        textStyle: const TextStyle(fontSize: 25),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
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

class CreateProject extends StatelessWidget {
  const CreateProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create a project'),
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

class ListProjects extends StatelessWidget {
  const ListProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects List'),
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
