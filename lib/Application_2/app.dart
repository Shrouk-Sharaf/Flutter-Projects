import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            'https://previews.123rf.com/images/9dreamstudio/9dreamstudio1903/9dreamstudio190303044/119797119-fitness-background-with-sport-equipment-for-gym-and-home-workout-on-yellow-background-top-view.jpg',
          ),
          SizedBox(height: 100),
          Text(
            'ZenFit',
            style: TextStyle(
              color: Colors.white,
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Unleash your potential through movement',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Experience()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow,
            ),
            child: Text("Let's do it", style: TextStyle(color: Colors.black, fontSize: 15)),
          ),
          SizedBox(height: 20),
          Text(
            'Skip for now',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Your expertise level?', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'For the experience and personalised plans for you we need to know your expertise level',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Text(
                'Beginner',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Text(
                'Intermediate',
                style: TextStyle(color: Colors.black, fontSize: 15),
              )
            ),
            SizedBox(height: 10),
            Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text(
                  'Advanced',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                )
            ),
            SizedBox(height: 40),
            Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                )
            ),
          ],
        ),
      ),
    );
  }
}
