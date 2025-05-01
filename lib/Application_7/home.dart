import 'package:flutter/material.dart';
import 'package:flutter180/Application_7/main.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    counter = pref?.getInt("counter") ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(counter.toString(), style: TextStyle(fontSize: 50)),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                  pref?.setInt("counter", counter);
                });
              },
              child: Text("add"),
            ),
          ],
        ),
      ),
    );
  }
}
