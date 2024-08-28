import 'package:flutter/material.dart';
import 'package:flutter_firstproject/models/index.dart';

class WorkoutPage extends StatelessWidget {
  WorkoutPage({super.key});

  final Workout workout = Workout(
      id: "tri-001",
      name: "Triceps Testa na Polia",
      description:
          "Position feet in climbing position, pull rope in front of head, and perform elbow extension, stretching and contracting");

  final List<Sense> senses = [
    Sense(id: "1", senseDescription: "I’m feeling very well, the elbow is not hurting and the triceps is working hard", data: "2024-08-21"),
    Sense(id: "2", senseDescription: "I’m feeling very bad, the elbow is hurting and the triceps worked less", data: "2024-08-28"),
  ];

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
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const Text(
                "Position feet in climbing position, pull rope in front of head, and perform elbow extension, stretching and contracting"),
            const Divider(),
            const Text(
              "How I'm feeling?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
                "I’m feeling very well, the elbow is not hurting and the triceps is working hard")
          ],
        ),
      ),
    );
  }
}
