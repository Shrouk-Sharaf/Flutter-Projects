import 'package:flutter/material.dart';
import 'components/planet.dart';

void main() => runApp(const SpaceApp());

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore The Universe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _buildBackgroundImage(),
            _buildTitle(),
            _buildExploreButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Positioned.fill(
      child: Image.asset(
        "assets/images/frame.png",
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildTitle() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Explore\nThe\nUniverse",
            style: TextStyle(
              fontSize: 48,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildExploreButton(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: Center(
        child: SizedBox(
          width: 342,
          height: 60,
          child: ElevatedButton(
            onPressed: () => _navigateToSun(context),
            style: _redButtonStyle(),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Explore',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Icon(Icons.arrow_forward_outlined, size: 25, color: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToSun(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Sun()),
    );
  }

  ButtonStyle _redButtonStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFEE403D),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(29),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
    );
  }
}