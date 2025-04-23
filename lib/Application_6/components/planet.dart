import 'package:flutter/material.dart';
import 'planet_component.dart';
import 'planet_info_screens.dart';

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