import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map<String, dynamic>? weatherData;
  bool loading = true;

  Future<void> fetchWeatherData() async {
    const String url =
        'https://yahoo-weather5.p.rapidapi.com/weather?location=sunnyvale&format=json&u=f';
    const Map<String, String> headers = {
      'x-rapidapi-key': 'd8dce66f93mshff2a2d1ec659d5cp19694bjsn667eb9481177',
      'x-rapidapi-host': 'yahoo-weather5.p.rapidapi.com'
    };

    try {
      final response = await http.get(Uri.parse(url), headers: headers);
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        setState(() {
          weatherData = result;
          loading = false;
        });
      } else {
        // print('Request failed with status: ${response.statusCode}');
        // print('Response body: ${response.body}');
      }
    } catch (error) {
      // print('Request failed with error: $error');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchWeatherData();
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final currentObservation = weatherData?['current_observation'];
    final temperature = currentObservation?['condition']['temperature'];
    final humidity = currentObservation?['atmosphere']['humidity'];
    final pressure = currentObservation?['atmosphere']['pressure'];
    final windDirection = currentObservation?['wind']['direction'];
    final windSpeed = currentObservation?['wind']['speed'];

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/home_screen_bg.jpg",
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.6),
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Today',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Image.asset(
                  "assets/images/wave.png",
                  fit: BoxFit.cover,
                  color: Colors.white.withOpacity(0.4),
                ),
              ),
              const SizedBox(height: 20),
              CircularPercentIndicator(
                radius: 100.0,
                lineWidth: 15.0,
                animation: true,
                percent: 0.6,
                center: const Text(
                  "60%",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                      color: Colors.white),
                ),
                footer: const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Your Health Score",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.white),
                  ),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.amber,
                animationDuration: 2000,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCard('Temperature', '$temperature°F', Colors.purple),
                  _buildCard('Humidity', '$humidity%', Colors.amber),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCard('Pressure', '$pressure hPa', Colors.green),
                  _buildCard(
                      'Wind', '$windSpeed mph $windDirection', Colors.blue),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String title, String content, Color color) {
    return Expanded(
      child: GestureDetector(
        onTap: () {},
        child: Card(
          color: color,
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Text(
                "$title\n$content",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
