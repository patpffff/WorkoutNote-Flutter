import 'package:flutter/material.dart';
import 'package:workout_note/presentation/widgets/workout_list.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Workouts"))),
      body: WorkoutList(),
    );
  }
}
