import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  bool loading = true; 

  Future<void> loadImages() async {
    try {
      await Future.wait([
        precacheImage(Image.asset('assets/images/deadlift.jpg').image, context),
        precacheImage(
            Image.asset('assets/images/stretching.jpg').image, context),
        precacheImage(
            Image.asset('assets/images/LatPulldown.jpg').image, context),
        precacheImage(Image.asset('assets/images/Pullups.jpg').image, context),
        precacheImage(
            Image.asset('assets/images/TrapBarCarry.jpg').image, context),
        precacheImage(Image.asset('assets/images/running.jpg').image, context),
        precacheImage(
            Image.asset('assets/images/dumbellcurl.jpg').image, context),
        precacheImage(Image.asset('assets/images/pushups.jpg').image, context),
        precacheImage(Image.asset('assets/images/cardio.jpg').image, context),
        precacheImage(
            Image.asset('assets/images/dumbellraise.jpg').image, context),
        precacheImage(
            Image.asset('assets/images/benchpress.jpg').image, context),
        precacheImage(Image.asset('assets/images/plank.jpg').image, context),
        precacheImage(Image.asset('assets/images/wave.jpg').image, context),
        precacheImage(Image.asset('assets/images/gymnastic.jpg').image, context),
        precacheImage(Image.asset('assets/images/home_screen_bg.jpg').image, context),
      ]);
      // print('Images loaded and cached successfully!');
    } catch (e) {
      // print('Failed to load and cache the images: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    loadImages().then((_) {
      setState(() {
        loading = false; 
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(strokeWidth: 2.0),
        ),
      );
    } else {
      // Navigate to home after build method completes
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushNamed(context, '/home');
      });
      return const Scaffold(
        body: Center(
          child: Text('Navigating to home...'),
        ),
      );
    }
  }
}
