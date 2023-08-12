import 'package:flutter/material.dart';
import 'package:lumina/list_projects.dart';
import 'appbar.dart';

class CreateProject extends StatelessWidget {
  const CreateProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(30),
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Create a project',
            style: TextStyle(height: 1.2, fontSize: 30),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Projects contain a collection of user stories. Give your project an awesome name.',
            style: TextStyle(height: 1.2, fontSize: 20),
          ),
          const SizedBox(
            height: 40,
          ),
          TextField(
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: 'My Awesome Project',
              hintStyle: const TextStyle(fontSize: 20.0, color: Colors.black26),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xFFFF6857), width: 2.0),
                borderRadius: BorderRadius.circular(90),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xFFFF6857), width: 2.0),
                borderRadius: BorderRadius.circular(90),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ListProjects()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                minimumSize: const Size(100, 55),
                backgroundColor: const Color(0xFFFF6857),
                textStyle: const TextStyle(fontSize: 25),
              ),
              child: const Text('Save'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xFFFF6857),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Go Back', //title
                textAlign: TextAlign.center, //aligment
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
