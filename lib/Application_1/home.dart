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
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child:
            Text(
              'Vestimate',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30
              ),
            ),
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text('Choose Your Area',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black45
              ),
            ),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.all(10),
                crossAxisCount: 2,
                children: [
                  Card(
                    color: Colors.lightBlue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_cart_outlined, color: Colors.white, size: 40),
                        SizedBox(height: 10),
                        Text('Buying', style: TextStyle(color: Colors.white, fontSize: 18)),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.lightBlue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.house_outlined, color: Colors.white, size: 40),
                        SizedBox(height: 10),
                        Text('Selling', style: TextStyle(color: Colors.white, fontSize: 18)),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.lightBlue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.cases_outlined, color: Colors.white, size: 40),
                        SizedBox(height: 10),
                        Text('Trades', style: TextStyle(color: Colors.white, fontSize: 18)),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.lightBlue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.slow_motion_video_outlined, color: Colors.white, size: 40),
                        SizedBox(height: 10),
                        Text('Videos', style: TextStyle(color: Colors.white, fontSize: 18)),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.lightBlue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.local_offer_outlined, color: Colors.white, size: 40),
                        SizedBox(height: 10),
                        Text('Deals', style: TextStyle(color: Colors.white, fontSize: 18)),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.lightBlue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.menu_book_outlined, color: Colors.white, size: 40),
                        SizedBox(height: 10),
                        Text('Case Study', style: TextStyle(color: Colors.white, fontSize: 18)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          selectedItemColor: Colors.lightBlue,
        ),
      ),
    );
  }
}
