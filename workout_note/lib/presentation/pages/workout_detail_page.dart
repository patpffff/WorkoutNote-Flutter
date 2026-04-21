import 'package:flutter/material.dart';
import 'package:workout_note/data/classes/workout.dart';

class WorkoutDetailPage extends StatelessWidget {
   final Workout workout;
   const WorkoutDetailPage({super.key, required this.workout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(workout.name),
      ),
      body: Text('ID: ${workout.id}'),
    );
  }
}