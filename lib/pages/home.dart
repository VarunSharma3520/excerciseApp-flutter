import 'package:exercise/components/calorie_calculator.dart';
import 'package:exercise/components/diet_chart.dart';
import 'package:exercise/components/exercise_plan.dart';
import 'package:exercise/components/home_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const ExercisePlan(),
    DietChart(),
    const CalorieCalculator(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(
      //   leading: Image.asset('assets/icons/icons.png'),
      //   title: Text(_pageName),
      //   automaticallyImplyLeading: false,
      //   backgroundColor: Colors.black,
      //   elevation: 0.6,
      // ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 8.0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 1) {
            } else if (_currentIndex == 2) {
            } else if (_currentIndex == 0) {
            } else if (_currentIndex == 3) {
            }
          });
        },
        items: const [
          BottomNavigationBarItem(
            tooltip: 'Home',
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            tooltip: 'Exercise Plan',
            icon: Icon(Icons.fitness_center_rounded),
            label: 'Exercise',
          ),
          BottomNavigationBarItem(
            tooltip: 'Diet Chart',
            icon: Icon(Icons.food_bank_rounded),
            label: 'Diet',
          ),
          BottomNavigationBarItem(
            tooltip: 'Calorie Calculator',
            icon: Icon(Icons.electric_bike),
            label: 'Calorie',
          ),
        ],
      ),
    ));
  }
}
