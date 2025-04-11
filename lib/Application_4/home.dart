import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Home Screen",
          style: TextStyle(
            fontSize: 25,
            color: Colors.purple,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          Icon(Icons.favorite_outline),
          SizedBox(width: 25),
          Icon(Icons.send_outlined),
          SizedBox(width: 10)
        ]
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFFEDC7A8),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFFEDC7A8),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFFEDC7A8),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.only(top:30.0, right: 30.0, left: 30.0),
            child: SizedBox(
              height: 290,
              width: 400,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xFFEDC7A8),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top:20.0, right: 20.0, left: 20.0, bottom: 10.0),
            child: SizedBox(
              width: 500,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child:Text(
                  'Open',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left:7.0, right: 4.0, bottom: 4.0),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    "Sarah",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed "
                        "do eiusmod tempor incididunt ut labore et dolore magna "
                        "aliqua. Ut enim ad minim veniam, quis nostrud exercitation "
                        "ullamco laboris nisi ut aliquip ex ea commodo consequat. "
                        "Duis aute irure dolor in reprehenderit in voluptate velit"
                        " esse cillum dolore eu fugiat nulla pariatur. Excepteur sint"
                  ),
                  Text(
                    "View all 109 comments...",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}