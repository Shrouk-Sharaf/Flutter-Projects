import 'package:flutter/material.dart';
import 'page_3.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

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
            left: -200,
            child: SizedBox(
              height: 400,
              width: 400,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  color: Color(0xFFEDC7A8),
                ),
              ),
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 450),
              Text(
                'Get Started With Yoga',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.purple,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'Easily get started with your yoga',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Text(
                'Journey',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ThirdPage()),
                        );
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),

                    Row(
                        children: [
                          Icon(Icons.circle_outlined, size: 15, color: Colors.purple),
                          SizedBox(width: 5),
                          Icon(Icons.circle, size: 20, color: Colors.purple),
                          SizedBox(width: 5),
                          Icon(Icons.circle_outlined, size: 15, color: Colors.purple),
                        ]
                    ),

                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ThirdPage()),
                        );
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
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
