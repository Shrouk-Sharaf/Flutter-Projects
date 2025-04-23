import 'package:flutter/material.dart';
import '../models/planet.dart';

class PlanetInfo extends StatelessWidget {
  final Planet planet;
  final Widget planetHomePage;

  const PlanetInfo({
    super.key,
    required this.planet,
    required this.planetHomePage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.85,
            child: Image.asset(
              "assets/images/Rectangle.png",
            ),
          ),

          Positioned(
            top: 30,
            left: 10,
            child: Row(
              children: [
                IconButton(
                  style: IconButton.styleFrom(backgroundColor: Colors.red),
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => planetHomePage),
                    );
                  },
                ),
                const SizedBox(width: 100),
                Text(
                  planet.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.03,
                  ),
                )
              ],
            ),
          ),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  Text(
                    planet.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.03,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Image.asset(
                    planet.imagePath,
                    width: planet.name == 'Uranus' ? 100 : null, // Specific size for Uranus
                    height: planet.name == 'Uranus' ? 100 : null,
                  ),

                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "About",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          planet.about,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          planet.formattedDetails,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 40), // Bottom padding
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}