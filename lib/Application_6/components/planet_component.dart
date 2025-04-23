import 'package:flutter/material.dart';

class PlanetComponent extends StatelessWidget {
  final String planetName;
  final String planetImagePath;
  final String backgroundImagePath;
  final Widget? previousPlanet;
  final Widget? nextPlanet;
  final Widget planetInfoPage;

  const PlanetComponent({
    super.key,
    required this.planetName,
    required this.planetImagePath,
    this.backgroundImagePath = "assets/images/Rectangle.png",
    this.previousPlanet,
    this.nextPlanet,
    required this.planetInfoPage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackgroundImage(),
          _buildPlanetContent(context),
        ],
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Opacity(
      opacity: 0.85,
      child: Image.asset(
        backgroundImagePath,
      ),
    );
  }

  Widget _buildPlanetContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildHeaderText(),
        _buildPlanetImage(),
        _buildNavigationControls(context),
        _buildExploreButton(context),
      ],
    );
  }

  Widget _buildHeaderText() {
    return Column(
      children: [
        const Text(
          "Explore",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.03,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 40),
        const Text(
          "Which planet \nwould you like to explore?",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.03,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildPlanetImage() {
    return Image.asset(planetImagePath);
  }

  Widget _buildNavigationControls(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            style: IconButton.styleFrom(backgroundColor: Colors.red),
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: previousPlanet != null
                ? () => _navigateToPlanet(context, previousPlanet!)
                : null,
          ),
          Text(
            planetName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            style: IconButton.styleFrom(backgroundColor: Colors.red),
            icon: const Icon(Icons.arrow_forward, color: Colors.white),
            onPressed: nextPlanet != null
                ? () => _navigateToPlanet(context, nextPlanet!)
                : null,
          ),
        ],
      ),
    );
  }

  Widget _buildExploreButton(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        width: 342,
        height: 60,
        child: ElevatedButton(
          onPressed: () => _navigateToPlanetInfo(context),
          style: _redButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Explore $planetName',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const Icon(Icons.arrow_forward_outlined, size: 25, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToPlanet(BuildContext context, Widget planet) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => planet),
    );
  }

  void _navigateToPlanetInfo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => planetInfoPage),
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