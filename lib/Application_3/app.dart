import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Winter Vacation Trips App',
      home: Scaffold(
        body: Center(
          child: FirstPage(),
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: NetworkImage(
                  'https://i.scdn.co/image/ab67616d0000b273034824a1d5dd5d711dad0e36',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Winter\nVacation Trips',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Enjoy your winter vacations with skiing and amazing sightseeing in the mountains. Enjoy the best experiences with us!',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DiscoverPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Let's Go!", style: TextStyle(color: Colors.white, fontSize: 18)),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward, color: Colors.white, size: 18),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          'Discover',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ4RujW9_si89qvtoXLwIripLMrwQe78N0xA&s',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 13,
                          fontWeight: FontWeight.bold)),
                  Text("Featured",
                      style:
                      TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                  Text("Most Viewed",
                      style:
                      TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                  Text("Europe",
                      style:
                      TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                  Text("Asia",
                      style:
                      TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0), // Adjust the radius as needed
                  image: DecorationImage(
                    image: NetworkImage('https://img.freepik.com/premium-photo/painting-village-with-mountains-background_985067-673.jpg?w=740'),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 300, // Adjust height as needed
              ),
            ),

            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(color: Colors.black45),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0), // Adjust the radius as needed
                        image: DecorationImage(
                          image: NetworkImage('https://img.freepik.com/premium-photo/cartoon-landscape-with-lake-forest-with-mountains-background_36682-219259.jpg?w=1380'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 150,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.0, left: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        image: DecorationImage(
                          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIW8xPCairj3IW9jtDXtyJvDsdhjtr5he9oW1rC9ER06mVHhvx'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 150,
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.0, left: 16.0, top: 16.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MountFuji()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://img.freepik.com/premium-photo/view-snowcapped-mountain-against-blue-sky_1048944-30730702.jpg?w=900',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 150,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.0, left: 8.0, top: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        image: DecorationImage(
                          image: NetworkImage('https://mir-s3-cdn-cf.behance.net/projects/404/96ff3c174393305.6575a07e09852.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 150,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today_rounded), label: "Calender"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.black45,
      ),
    );
  }
}

class MountFuji extends StatelessWidget {
  const MountFuji({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(30)),
                child: Image.network(
                  'https://img.freepik.com/premium-photo/view-snowcapped-mountain-against-blue-sky_1048944-30730702.jpg?w=900',
                  height: 260,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 30, // Adjust as needed
                left: 6,
                child: IconButton(
                  icon: const Icon(Icons.menu, color: Colors.black),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mount Fuji',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined, color: Colors.purple, size: 20),
                    SizedBox(width: 4),
                    Text(
                      'Honshu, Japan',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children:[
                    Icon(Icons.star, color: Colors.amber, size: 20),
                    Icon(Icons.star, color: Colors.amber, size: 20),
                    Icon(Icons.star, color: Colors.amber, size: 20),
                    Icon(Icons.star, color: Colors.amber, size: 20),
                    Icon(Icons.star_half, color: Colors.amber, size: 20),
                    SizedBox(width: 10),
                    Text(
                      '4.9',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Text('-', style: TextStyle(color: Colors.deepPurple, fontSize: 30, fontWeight: FontWeight.bold)),
                    SizedBox(width: 18),
                    Text('5', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(width: 18),
                    Text('+', style: TextStyle(color: Colors.deepPurple, fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(width: 25),
                    Icon(Icons.access_time, color: Colors.deepPurple, size: 20),
                    SizedBox(width: 4),
                    Text('5 Days', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 16),

                Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),

                Text(
                  'Mount Fuji (富士山, Fujisan) is Japan’s highest and most famous '
                      'mountain, known for its perfect cone shape and cultural '
                      'significance. A UNESCO World Heritage Site, it attracts '
                      'climbers in summer and offers stunning views year-round. '
                      'Key spots include the Fuji Five Lakes (富士五湖, Fujigoko) '
                      'and Chureito Pagoda (忠霊塔, Chūreitō).',
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$400/Package',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    Container(
                      padding:EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        'Book Now',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
