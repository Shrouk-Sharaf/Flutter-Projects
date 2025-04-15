import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int teamA = 0;
  int teamB = 0;
  List<Map<String, int>> scores = [];

  void record() {
    scores.add({'A': teamA, 'B': teamB});
  }

  void undo() {
    var last = scores.removeLast();
    setState(() {
      teamA = last['A']!;
      teamB = last['B']!;
    });
  }

  void reset() {
    setState(() {
      teamA = 0;
      teamB = 0;
      scores.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(
            "BasketBall App",
            style: TextStyle(color: Colors.black87),
          ),
        ),
        backgroundColor: Colors.white,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Text("Team A", style: TextStyle(color: Colors.grey)),
                  Text("$teamA", style: TextStyle(fontSize: 50)),
                  ElevatedButton(
                    onPressed: () {
                      record();
                      setState(() {
                        teamA += 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                    child: Text("+3 Throw", style: TextStyle(color: Colors.black87)),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      record();
                      setState(() {
                        teamA += 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                    child: Text("+2 Throw", style: TextStyle(color: Colors.black87)),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      record();
                      setState(() {
                        teamA += 1;
                      });
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                    child: Text("+1 Throw", style: TextStyle(color: Colors.black87)),
                  ),
                ],
              ),
            ),
            VerticalDivider(
              color: Colors.grey,
              thickness: 2,
              width: 60,
              indent: 20,
              endIndent: 400,
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Text("Team B", style: TextStyle(color: Colors.grey)),
                  Text("$teamB", style: TextStyle(fontSize: 50)),
                  ElevatedButton(
                    onPressed: () {
                      record();
                      setState(() {
                        teamB += 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                    child: Text("+3 Throw", style: TextStyle(color: Colors.black87)),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      record();
                      setState(() {
                        teamB += 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                    child: Text("+2 Throw", style: TextStyle(color: Colors.black87)),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      record();
                      setState(() {
                        teamB += 1;
                      });
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                    child: Text("+1 Throw", style: TextStyle(color: Colors.black87)),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: reset,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  child: Text("Reset", style: TextStyle(color: Colors.black87)),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: undo,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  child: Text("Undo", style: TextStyle(color: Colors.black87)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
