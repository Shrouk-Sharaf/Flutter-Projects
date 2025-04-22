import 'package:flutter/material.dart';

void main() => runApp(const SpaceApp());

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore The Universe',
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/frame1.png",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Align(
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
            ),

            // Modified button positioning to match Home1
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Center(
                    child: SizedBox(
                      width: 342,
                      height: 60,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home2()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFEE403D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(29),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Explore',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              Icon(Icons.arrow_forward_outlined, size: 25, color: Colors.white)
                            ],
                          )
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.85,
            child: Image.asset(
              "assets/images/Rectangle 1.png",
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Explore",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.03,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 40),

              Text(
                "Which planet \nwould you like to explore?",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.03,
                  color: Colors.white,
                ),
              ),

              Image.asset(
                "assets/images/earth 1.png"
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      // Handle left arrow press
                    },
                  ),
                  Text(
                    'Earth',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    icon: Icon(Icons.arrow_forward, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home2()),
                      );
                    },
                  ),
                ],
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 342,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EarthInfoApp()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEE403D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(29),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Explore Earth',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Icon(Icons.arrow_forward_outlined, size: 25, color: Colors.white)
                        ],
                      )
                  ),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.85,
            child: Image.asset(
              "assets/images/Rectangle 1.png",
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Explore",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.03,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 40),

              Text(
                "Which planet \nwould you like to explore?",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.03,
                  color: Colors.white,
                ),
              ),

              Image.asset(
                "assets/images/mercury 1.png"
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home1()),
                      );
                    },
                  ),
                  Text(
                    'Mercury',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    icon: Icon(Icons.arrow_forward, color: Colors.white),
                    onPressed: () {
                    },
                  ),
                ],
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 342,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEE403D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(29),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Explore Mercury',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Icon(Icons.arrow_forward_outlined, size: 25, color: Colors.white)
                        ],
                      )
                  ),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}

class EarthInfoApp extends StatelessWidget {
  const EarthInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,

          ),
      ),
    );
  }
}

