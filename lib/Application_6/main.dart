import 'package:flutter/material.dart';
import 'components/planet_component.dart';
import 'components/planet_info.dart';
import 'data/planet_repository.dart';

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
            onPressed: () => _navigateToEarth(context),
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

  void _navigateToEarth(BuildContext context) {
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

class Sun extends StatelessWidget {
  const Sun({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanetComponent(
      planetName: "Sun",
      planetImagePath: "assets/images/sun 1.png",
      nextPlanet: const Mercury(),
      planetInfoPage: const SunInfoApp(),
    );
  }
}

class Mercury extends StatelessWidget {
  const Mercury({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanetComponent(
      planetName: "Mercury",
      planetImagePath: "assets/images/mercury 1.png",
      previousPlanet: const Sun(),
      nextPlanet: const Venus(),
      planetInfoPage: const MercuryInfoApp(),
    );
  }
}

class Venus extends StatelessWidget {
  const Venus({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanetComponent(
      planetName: "Venus",
      planetImagePath: "assets/images/venus 1.png",
      previousPlanet: const Mercury(),
      nextPlanet: const Earth(),
      planetInfoPage: const VenusInfoApp(),
    );
  }
}

class Earth extends StatelessWidget {
  const Earth({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanetComponent(
      planetName: "Earth",
      planetImagePath: "assets/images/earth 1.png",
      previousPlanet: const Venus(),
      nextPlanet: const Mars(),
      planetInfoPage: const EarthInfoApp(),
    );
  }
}

class Mars extends StatelessWidget {
  const Mars({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanetComponent(
      planetName: "Mars",
      planetImagePath: "assets/images/mars 1.png",
      previousPlanet: const Earth(),
      nextPlanet: const Jupiter(),
      planetInfoPage: const MarsInfoApp(),
    );
  }
}

class Jupiter extends StatelessWidget {
  const Jupiter({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanetComponent(
      planetName: "Jupiter",
      planetImagePath: "assets/images/jupiter 1.png",
      previousPlanet: const Mars(),
      nextPlanet: const Saturn(),
      planetInfoPage: const JupiterInfoApp(),
    );
  }
}

class Saturn extends StatelessWidget {
  const Saturn({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanetComponent(
      planetName: "Saturn",
      planetImagePath: "assets/images/saturn 1.png",
      previousPlanet: const Jupiter(),
      nextPlanet: const Uranus(),
      planetInfoPage: const SaturnInfoApp(),
    );
  }
}

class Uranus extends StatelessWidget {
  const Uranus({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanetComponent(
      planetName: "Uranus",
      planetImagePath: "assets/images/uranus 1.png",
      previousPlanet: const Saturn(),
      nextPlanet: const Neptune(),
      planetInfoPage: const UranusInfoApp(),
    );
  }
}

class Neptune extends StatelessWidget {
  const Neptune({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanetComponent(
      planetName: "Neptune",
      planetImagePath: "assets/images/neptune 1.png",
      previousPlanet: const Uranus(),
      planetInfoPage: const NeptuneInfoApp(),
    );
  }
}

class EarthInfoApp extends StatelessWidget {
  const EarthInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanetInfo(
      planet: PlanetRepository.planets.firstWhere((p) => p.name == 'Earth'),
      planetHomePage: const Earth(),
    );
  }
}

class SunInfoApp extends StatelessWidget {
  const SunInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanetInfo(
      planet: PlanetRepository.planets.firstWhere((p) => p.name == 'Sun'),
      planetHomePage: const Sun(),
    );
  }
}

class MercuryInfoApp extends StatelessWidget {
  const MercuryInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanetInfo(
      planet: PlanetRepository.planets.firstWhere((p) => p.name == 'Mercury'),
      planetHomePage: const Mercury(),
    );
  }
}

class VenusInfoApp extends StatelessWidget {
  const VenusInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanetInfo(
      planet: PlanetRepository.planets.firstWhere((p) => p.name == 'Venus'),
      planetHomePage: const Venus(),
    );
  }
}

class MarsInfoApp extends StatelessWidget {
  const MarsInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanetInfo(
      planet: PlanetRepository.planets.firstWhere((p) => p.name == 'Mars'),
      planetHomePage: const Mars(),
    );
  }
}

class JupiterInfoApp extends StatelessWidget {
  const JupiterInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanetInfo(
      planet: PlanetRepository.planets.firstWhere((p) => p.name == 'Jupiter'),
      planetHomePage: const Jupiter(),
    );
  }
}

class SaturnInfoApp extends StatelessWidget {
  const SaturnInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanetInfo(
      planet: PlanetRepository.planets.firstWhere((p) => p.name == 'Saturn'),
      planetHomePage: const Saturn(),
    );
  }
}

class UranusInfoApp extends StatelessWidget {
  const UranusInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanetInfo(
      planet: PlanetRepository.planets.firstWhere((p) => p.name == 'Uranus'),
      planetHomePage: const Uranus(),
    );
  }
}

class NeptuneInfoApp extends StatelessWidget {
  const NeptuneInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanetInfo(
      planet: PlanetRepository.planets.firstWhere((p) => p.name == 'Neptune'),
      planetHomePage: const Neptune(),
    );
  }
}