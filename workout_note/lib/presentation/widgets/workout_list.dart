import 'package:flutter/material.dart';
import 'package:workout_note/data/classes/workout.dart';
import 'package:workout_note/presentation/pages/workout_detail_page.dart';

class WorkoutList extends StatefulWidget {
  const WorkoutList({super.key});

  @override
  State<WorkoutList> createState() => _WorkoutListState();
}

class _WorkoutListState extends State<WorkoutList> {
  final List<Workout> _workoutcollection = [
    Workout(id: 1, name: "bauch, beine, po"),
    Workout(id: 2, name: "brust, bizeps"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _workoutcollection.length, // Anzahl der Elemente
      itemBuilder: (context, index) {
        return ListTile(
          title: Center(child: Text(_workoutcollection[index].name)),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    WorkoutDetailPage(workout: _workoutcollection[index]),
              ),
            );
          },
        );
      },
    );
  }
}
