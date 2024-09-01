import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firstproject/models/index.dart';
import 'package:flutter_firstproject/utils/myColors.dart';

class WorkoutPage extends StatelessWidget {
  WorkoutPage({super.key});

  final Workout workout = Workout(
      id: "tri-001",
      name: "Triceps Testa na Polia",
      description:
          "Position feet in climbing position, pull rope in front of head, and perform elbow extension, stretching and contracting");

  final List<Sense> senses = [
    Sense(
        id: "1",
        senseDescription:
            "I’m feeling very well, the elbow is not hurting and the triceps is working hard",
        data: "2024-08-21"),
    Sense(
        id: "2",
        senseDescription:
            "I’m feeling very bad, the elbow is hurting and the triceps worked less",
        data: "2024-08-28"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.redFla,
      appBar: AppBar(
        title: Text(
          workout.name,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: const Color(0xFFFFFFff)),
        ),
        centerTitle: true,
        backgroundColor: MyColors.redFla,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (kDebugMode) {
            print("Clicked");
          }
        },
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          color: MyColors.bottomGradientColor,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListView(
          children: [
            SizedBox(
                height: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.bottomGradientColor,
                          shape: const BeveledRectangleBorder()),
                      child: const Text("Send Photo", style: TextStyle(color: Colors.white),),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.bottomGradientColor,
                          shape: const BeveledRectangleBorder()),
                      child: const Text("Remove Photo", style: TextStyle(color: Colors.white),),
                    )
                  ],
                )),
            const Text(
              "How to execute?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(workout.description),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.black,
              ),
            ),
            const Text(
              "How to execute?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(senses.length, (index) {
                Sense senseUpdated = senses[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  leading: const Icon(Icons.double_arrow),
                  title: Text(senseUpdated.senseDescription),
                  subtitle: Text(senseUpdated.data),
                  trailing: IconButton(
                      onPressed: () {
                        if (kDebugMode) {
                          print("DELETE SENSE: ${senseUpdated.id}");
                        }
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: MyColors.redFla,
                      )),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
