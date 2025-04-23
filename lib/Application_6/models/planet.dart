class Planet {
  final String name;
  final String imagePath;
  final String title;
  final String about;
  final double distanceFromSun;
  final double lengthOfDay;
  final double orbitalPeriod;
  final double radius;
  final String mass;
  final double gravity;
  final String surfaceArea;
  final int position;

  Planet({
    required this.name,
    required this.imagePath,
    required this.title,
    required this.about,
    required this.distanceFromSun,
    required this.lengthOfDay,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea,
    required this.position,
  });

  String get formattedDetails {
    return '''
Distance from Sun (km): ${distanceFromSun.toStringAsFixed(2).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}
Length of Day (hours): $lengthOfDay
Orbital Period (Earth years): $orbitalPeriod
Radius (km): ${radius.toStringAsFixed(2).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}
Mass (kg): $mass
Gravity (m/s²): $gravity
Surface Area (km²): $surfaceArea
''';
  }
}