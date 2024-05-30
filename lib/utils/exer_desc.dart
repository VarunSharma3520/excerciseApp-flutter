import 'package:flutter/material.dart';

class ExerciseDesc extends StatelessWidget {
  const ExerciseDesc({
    super.key,
    required this.exerciseName,
    required this.averageReps,
    required this.averageWeight,
    required this.targetMuscle,
    required this.achieves,
  });

  final String exerciseName;
  final String averageReps;
  final String averageWeight;
  final String targetMuscle;
  final String achieves;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Exercise Name: $exerciseName',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Average Reps: $averageReps',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Average Weight: $averageWeight',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Target Muscle: $targetMuscle',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Achieves: $achieves',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
