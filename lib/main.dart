import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travles_v1/login/login_page.dart'; // Import the Login Page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // White background
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                isLastPage = index == 2;
              });
            },
            children: [
              OnboardingPage(
                imageUrl:
                    'https://img.freepik.com/premium-photo/travel-concept-around-world-with-landmarks-white-background_41969-15422.jpg',
                title: 'Travel the World',
                description:
                    'Explore new destinations, immerse yourself in different cultures, and create unforgettable memories.',
              ),
              OnboardingPage(
                imageUrl:
                    'https://st2.depositphotos.com/1500858/6435/i/450/depositphotos_64358265-stock-photo-travel-the-world-monument-concept.jpg',
                title: 'Adventure Awaits',
                description:
                    'Discover breathtaking landscapes, taste exotic cuisines, and embrace thrilling adventures.',
              ),
              OnboardingPage(
                imageUrl:
                    'https://img.freepik.com/premium-photo/plane-travel-landmark-world-white-background-time-travel-banner-tourism-trip-concept-journey-vacation-vector-illustration-flat-design_1324913-1847.jpg',
                title: 'Plan Your Journey',
                description:
                    'Book flights, find accommodations, and get travel tips to make your trip smooth and enjoyable.',
              ),
            ],
          ),
          Positioned(
            bottom: 80,
            left: 20,
            right: 20,
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Colors.blue,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 10,
            right: 10,
            child: isLastPage
                ? Center(
                    child: SizedBox(
                      width: 200, // Adjust width as needed
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to the Login Page
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                              vertical: 12), // Adjust height
                          textStyle:
                              TextStyle(fontSize: 16), // Adjust font size
                        ),
                        child: Text('Get Login'),
                      ),
                    ),
                  )
                : TextButton(
                    onPressed: () {
                      _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                    },
                    child: Text('Next', style: TextStyle(color: Colors.blue)),
                  ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String imageUrl, title, description;
  OnboardingPage(
      {required this.imageUrl, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // White background
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imageUrl, height: 300, fit: BoxFit.cover),
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}
