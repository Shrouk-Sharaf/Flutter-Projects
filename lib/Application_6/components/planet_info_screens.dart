import 'package:flutter/material.dart';
import '../data/planet_repository.dart';
import 'planet_info.dart';
import 'planet.dart';

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