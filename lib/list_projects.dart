import 'package:flutter/material.dart';
import 'appbar.dart';

class ListProjects extends StatelessWidget {
  const ListProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: ListView(
        children: [
          const Text(
            "Your Projects",
            style: TextStyle(fontSize: 26),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 100,
              color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 100,
              color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 100,
              color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 100,
              color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 100,
              color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 100,
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
