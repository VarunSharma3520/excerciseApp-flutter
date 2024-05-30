import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
import 'package:exercise/utils/exer_desc.dart';

class ExercisePlan extends StatelessWidget {
  const ExercisePlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Accordion(
      headerBorderColor: Colors.blueGrey,
      headerBorderColorOpened: Colors.black,
      headerBorderWidth: 1,
      headerBackgroundColorOpened: Colors.black,
      contentBackgroundColor: Colors.white,
      contentBorderColor: Colors.grey,
      contentBorderWidth: 3,
      contentHorizontalPadding: 20,
      headerPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
      openAndCloseAnimation: true,
      children: [
        AccordionSection(
            rightIcon: const SizedBox.shrink(),
            header: Stack(
              children: [
                Image.asset('assets/images/deadlift.jpg'),
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(0.4),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(120, 160, 0, 0),
                        child: Text(
                          'Deadlift',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            content: const ExerciseDesc(
              exerciseName: 'Deadlift',
              averageReps: '5-10',
              averageWeight:
                  'Varies greatly; intermediate male ~143 kg, female ~84 kg',
              targetMuscle: 'Lower back, gluts, hamstrings',
              achieves: 'Strength, power, muscle hypertrophy, improved posture',
            )),
        AccordionSection(
            rightIcon: const SizedBox.shrink(),
            header: Stack(
              children: [
                Image.asset('assets/images/stretching.jpg'),
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(0.4),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(120, 160, 0, 0),
                        child: Text(
                          'Stretching',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            content: const ExerciseDesc(
              exerciseName: 'Stretching',
              averageReps: '15-20 Mins',
              averageWeight: 'nil',
              targetMuscle: 'Flexibility',
              achieves: 'Improved flexibility and mobility',
            )),
        AccordionSection(
            rightIcon: const SizedBox.shrink(),
            header: Stack(
              children: [
                Image.asset('assets/images/LatPulldown.jpg'),
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(0.4),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(100, 160, 0, 0),
                        child: Text(
                          'Lat Pulldown',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            content: const ExerciseDesc(
              exerciseName: 'Lat Pulldown',
              averageReps: '8-12',
              averageWeight: 'Moderate',
              targetMuscle: 'Back, Biceps',
              achieves: 'Strength and muscle growth in back and biceps',
            )),
        AccordionSection(
            rightIcon: const SizedBox.shrink(),
            header: Stack(
              children: [
                Image.asset('assets/images/Pullups.jpg'),
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(0.4),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(120, 160, 0, 0),
                        child: Text(
                          'Pullups',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            content: const ExerciseDesc(
              exerciseName: 'Pullups',
              averageReps: '6-10',
              averageWeight: 'Body Weight',
              targetMuscle: 'Back, Arms',
              achieves: 'Upper body strength and muscle development',
            )),
        AccordionSection(
            rightIcon: const SizedBox.shrink(),
            header: Stack(
              children: [
                Image.asset('assets/images/TrapBarCarry.jpg'),
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(0.4),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(80, 160, 0, 0),
                        child: Text(
                          'Trap Bar Carry',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            content: const ExerciseDesc(
              exerciseName: 'Trap Bar Carry',
              averageReps: '5-10',
              averageWeight:
                  'Varies greatly; intermediate male ~143 kg, female ~84 kg',
              targetMuscle: 'Lower back, gluts, hamstrings',
              achieves: 'Strength, power, muscle hypertrophy, improved posture',
            )),
        AccordionSection(
            rightIcon: const SizedBox.shrink(),
            header: Stack(
              children: [
                Image.asset('assets/images/running.jpg'),
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(0.4),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(120, 160, 0, 0),
                        child: Text(
                          'Running',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            content: const ExerciseDesc(
              exerciseName: 'Running',
              averageReps: 'typically measured in distance or time',
              averageWeight: 'Body weight',
              targetMuscle: 'Legs, cardiovascular system',
              achieves: 'Cardiovascular fitness, endurance, calorie burn',
            )),
        AccordionSection(
            rightIcon: const SizedBox.shrink(),
            header: Stack(
              children: [
                Image.asset('assets/images/dumbellcurl.jpg'),
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(0.4),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(120, 160, 0, 0),
                        child: Text(
                          'Dumbbell Curl',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            content: const ExerciseDesc(
              exerciseName: 'Dumbbell Curl',
              averageReps: '8-12',
              averageWeight:
                  'Varies based on individual strength, typically lighter than compound lifts',
              targetMuscle: 'Biceps',
              achieves: 'Bicep muscle development, arm strength',
            )),
        AccordionSection(
            rightIcon: const SizedBox.shrink(),
            header: Stack(
              children: [
                Image.asset('assets/images/dips.jpg'),
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(0.4),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(120, 160, 0, 0),
                        child: Text(
                          'Dips',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            content: const ExerciseDesc(
              exerciseName: 'Dips',
              averageReps: '8-12',
              averageWeight:
                  'Body weight plus any additional weight if using a dip belt',
              targetMuscle: 'Triceps, chest, shoulders',
              achieves:
                  'Upper body strength, muscle hypertrophy in triceps and chest',
            )),
        AccordionSection(
            rightIcon: const SizedBox.shrink(),
            header: Stack(
              children: [
                Image.asset('assets/images/pushups.jpg'),
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(0.4),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(120, 160, 0, 0),
                        child: Text(
                          'Pushups',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            content: const ExerciseDesc(
              exerciseName: 'Pushups',
              averageReps: '8-20',
              averageWeight: 'Body weight',
              targetMuscle: 'Chest, shoulders, triceps, core',
              achieves: 'Upper body and core strength, muscle endurance',
            )),
        AccordionSection(
            rightIcon: const SizedBox.shrink(),
            header: Stack(
              children: [
                Image.asset('assets/images/cardio.jpg'),
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(0.4),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(120, 160, 0, 0),
                        child: Text(
                          'Cardio',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            content: const ExerciseDesc(
              exerciseName: 'Cardio',
              averageReps: '5-10',
              averageWeight:
                  'Varies greatly; intermediate male ~143 kg, female ~84 kg',
              targetMuscle: 'Lower back, gluts, hamstrings',
              achieves: 'Strength, power, muscle hypertrophy, improved posture',
            )),
        AccordionSection(
            rightIcon: const SizedBox.shrink(),
            header: Stack(
              children: [
                Image.asset('assets/images/dumbellraise.jpg'),
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(0.4),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(120, 160, 0, 0),
                        child: Text(
                          'Dumbbell Raise',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            content: const ExerciseDesc(
              exerciseName: 'Dumbbell Raise',
              averageReps: '8-12',
              averageWeight:
                  'Varies based on individual strength, typically lighter than compound lifts',
              targetMuscle: 'Shoulders (deltoids)',
              achieves: 'Shoulder muscle development, shoulder stability',
            )),
        AccordionSection(
            rightIcon: const SizedBox.shrink(),
            header: Stack(
              children: [
                Image.asset('assets/images/benchpress.jpg'),
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(0.4),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(120, 160, 0, 0),
                        child: Text(
                          'Bench Press',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            content: const ExerciseDesc(
              exerciseName: 'Bench Press',
              averageReps: '6-10',
              averageWeight:
                  'Varies greatly; intermediate male ~143 kg, female ~84 kg',
              targetMuscle: 'Chest, shoulders, triceps',
              achieves: 'Upper body strength, chest muscle development',
            )),
        AccordionSection(
            rightIcon: const SizedBox.shrink(),
            header: Stack(
              children: [
                Image.asset('assets/images/gymnastic.jpg'),
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(0.4),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(120, 160, 0, 0),
                        child: Text(
                          'Gymnastic',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            content: const ExerciseDesc(
              exerciseName: 'Gymnastic',
              averageReps: 'Varies widely depending on skill level and routine',
              averageWeight: 'Body weight',
              targetMuscle: 'Entire body, with emphasis on upper body and core',
              achieves: 'Strength, flexibility, body control, coordination',
            )),
        AccordionSection(
            rightIcon: const SizedBox.shrink(),
            header: Stack(
              children: [
                Image.asset('assets/images/plank.jpg'),
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(0.4),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(120, 160, 0, 0),
                        child: Text(
                          'Plank',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            content: const ExerciseDesc(
              exerciseName: 'Plank',
              averageReps: 'Duration: 30 seconds to 2 minutes per set',
              averageWeight: 'Body weight',
              targetMuscle: 'Core (abdominal, lower back)',
              achieves: 'Core strength, stability, improved posture',
            )),
      ],
    );
  }
}
