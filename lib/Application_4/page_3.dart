import 'package:flutter/material.dart';
import 'home.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.purple, size: 45),
            onPressed: () {
              Navigator.pop(context);
            },
          )
      ),
      body: Stack(
        children: [
          Positioned(
            top: 25,
            left: 8,
            right: 8,
            child: SizedBox(
              height: 400,
              width: 400,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  color:Color(0xFFEDC7A8),
                ),
              ),
            ),
          ),

          Column(
            children: [
              SizedBox(height: 450),
              Text(
                'Unplug Your Life',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.purple,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'Set up different measures to start ',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Text(
                'with your life',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 90),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: SizedBox(
                  width: 500,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FourthPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}