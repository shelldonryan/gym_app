import 'package:flutter/material.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tríceps Testa na polia"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.ac_unit),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Send Photo")),
            const Text(
              "How execute?",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            const Text("Position feet in climbing position, pull rope in front of head, and perform elbow extension, stretching and contracting"),
            const Divider(),
            const Text(
              "How I'm feeling?",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            Text("I’m feeling very well, the elbow is not hurting and the triceps is working hard")
          ],
        ),
      ),
    );
  }
}
