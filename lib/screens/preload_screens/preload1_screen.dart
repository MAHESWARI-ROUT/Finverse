import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class PreloadScreen extends StatefulWidget {
  const PreloadScreen({super.key});

  @override
  State<PreloadScreen> createState() => _PreloadScreenState();
}

class _PreloadScreenState extends State<PreloadScreen> {
  bool showSecond = false;

  @override
  void initState() {
    super.initState();

    // Switch to second animation after 2.5 seconds
    Future.delayed(const Duration(milliseconds: 2500), () {
      setState(() {
        showSecond = true;
      });

      // Navigate to HomePage or next screen
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const HomePage()));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF3975E8), Color(0xFFEBDDD7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        alignment: Alignment.center,
        child: showSecond ? _secondText() : _firstText(),
      ),
    );
  }

  Widget _firstText() {
    return DefaultTextStyle(
      style: const TextStyle(fontSize: 24, color: Colors.white),
      child: AnimatedTextKit(
        repeatForever: false,
        totalRepeatCount: 1,
        animatedTexts: [
          TypewriterAnimatedText("Know Your ", speed: const Duration(milliseconds: 100)),
          TypewriterAnimatedText("Finances", textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ), speed: const Duration(milliseconds: 100)),
        ],
      ),
    );
  }

  Widget _secondText() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text(
          "with",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "Fin",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text: "Verse",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Home Screen")),
    );
  }
}
