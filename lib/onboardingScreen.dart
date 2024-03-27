import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnboardingScreen> {
  late final PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Container(
                color: Colors.blueGrey.shade600,
              ),
              Container(
                color: Colors.blueGrey.shade600,
              ),
              Container(
                color: Colors.blueGrey.shade600,
              ),
            ],
          ),
          SmoothPageIndicator(controller: _controller, count: 3),
        ],
      ),
    );
  }
}
