import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
// ignore: unused_import
import 'package:travles_v1/Home/account_page.dart';
import 'package:travles_v1/Home/home_datial/blue_city.dart';
import 'package:travles_v1/Home/home_datial/city_of_palaces.dart';
import 'package:travles_v1/Home/home_datial/diamond_city.dart';
import 'package:travles_v1/Home/home_datial/pink_city.dart';
import 'package:travles_v1/Home/home_datial/see_all.dart';
import 'package:travles_v1/Home/home_datial/sience_city.dart';
import 'package:travles_v1/Home/setting/gaide.dart';
import 'settings_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  bool _isSearching = false;
  TextEditingController _searchController = TextEditingController();
  late stt.SpeechToText _speech;
  bool _isListening = false;

  final List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
    _pages.addAll([
      HomeScreen(),
      GaidePage(),
      SettingsPage(),
    ]);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _startSearch() {
    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearch() {
    setState(() {
      _isSearching = false;
      _searchController.clear();
    });
  }

  void _startListening() async {
    bool available = await _speech.initialize(
      onStatus: (status) => print('Speech status: $status'),
      onError: (error) => print('Speech error: $error'),
    );
    if (available) {
      setState(() => _isListening = true);
      _speech.listen(
        onResult: (result) {
          setState(() {
            _searchController.text = result.recognizedWords;
          });
        },
      );
    }
  }

  void _stopListening() {
    setState(() => _isListening = false);
    _speech.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isSearching
            ? TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  border: InputBorder.none,
                ),
                autofocus: true,
              )
            : Text(
                ['Welcome to Home', '', 'Liked', 'Settings'][_selectedIndex]),
        actions: [
          if (!_isSearching)
            IconButton(
              icon: Icon(Icons.search),
              onPressed: _startSearch,
            )
          else ...[
            IconButton(
              icon: Icon(Icons.mic,
                  color: _isListening ? Colors.red : Colors.black),
              onPressed: _isListening ? _stopListening : _startListening,
            ),
            IconButton(
              icon: Icon(Icons.close),
              onPressed: _stopSearch,
            ),
          ],
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.safety_divider_sharp, color: Colors.black),
            label: 'Gaide',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded, color: Colors.black),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> hotels = [
    {
      'name': 'Grand Palace Hotel',
      'address': '123 Main Street, City Center',
      'phone': '+91 9876543210',
    },
    {
      'name': 'Skyline Luxury Stay',
      'address': '456 River Road, Downtown',
      'phone': '+91 8765432109',
    },
    {
      'name': 'Sunset Beach Resort',
      'address': '789 Ocean Drive, Seaside',
      'phone': '+91 7654321098',
    },
    {
      'name': 'Mountain View Lodge',
      'address': '101 Valley Road, Hillside',
      'phone': '+91 6543210987',
    },
    {
      'name': 'Royal Heritage Inn',
      'address': '321 Castle Road, Old Town',
      'phone': '+91 8765432101',
    },
    {
      'name': 'Ocean View Retreat',
      'address': '555 Beachside Avenue, Bay Area',
      'phone': '+91 7654321092',
    },
    {
      'name': 'Hilltop Grand Hotel',
      'address': '777 Highland Drive, Countryside',
      'phone': '+91 6543210983',
    },
    {
      'name': 'City Lights Hotel',
      'address': '999 Downtown Street, Metro City',
      'phone': '+91 5432109874',
    },
    {
      'name': 'Sunset Beach Resort',
      'address': '789 Ocean Drive, Seaside',
      'phone': '+91 7654321098',
    },
    {
      'name': 'Mountain View Lodge',
      'address': '101 Valley Road, Hillside',
      'phone': '+91 6543210987',
    },
    {
      'name': 'Royal Heritage Inn',
      'address': '321 Castle Road, Old Town',
      'phone': '+91 8765432101',
    },
    {
      'name': 'Ocean View Retreat',
      'address': '555 Beachside Avenue, Bay Area',
      'phone': '+91 7654321092',
    },
    {
      'name': 'Hilltop Grand Hotel',
      'address': '777 Highland Drive, Countryside',
      'phone': '+91 6543210983',
    },
    {
      'name': 'City Lights Hotel',
      'address': '999 Downtown Street, Metro City',
      'phone': '+91 5432109874',
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> places = [
      {
        'image':
            'https://www.holidify.com/images/cmsuploads/compressed/Hawa_Mahal_in_Pink_City_Jaipur_Rajasthan_20190607020715.jpg',
        'title': 'Pink City',
        'location': 'Jaipur',
        'star': '4.3',
        'Text':
            'Jaipur in India is known as the Pink City because of the many pink-colored buildings',
        'page': PinkCityPage()
      },
      {
        'image':
            'https://www.holidify.com/images/cmsuploads/compressed/27523762949_834dee1a15_b_20190607020936.jpg',
        'title': 'Blue City',
        'location': 'Jodhpur',
        'star': '4.0',
        'Text':
            'Jodhpur, a city in Rajasthan, India, is known as the Blue City because of the many blue-painted ',
        'page': BlueCityPage(),
      },
      {
        'image':
            'https://www.holidify.com/images/cmsuploads/compressed/in-some-3110417_960_720_20190607022056.jpg',
        'title': 'Diamond City',
        'location': 'Surat',
        'star': '5.0',
        'Text':
            'A major center of diamond mining, with an economy that was once founded on the gems. ',
        'page': DiamondCityPage(),
      },
      {
        'image':
            'https://www.holidify.com/images/cmsuploads/compressed/Queen_Victoria27s_Palace2C_Kolkata_20190607024920.jpg',
        'title': 'City of Palaces',
        'location': 'Mysore',
        'star': '4.1',
        'Text':
            'Developed by the National Council of Science Museums, it is one of the largest and finest in the world',
        'page': CityofPalaces(),
      },
      {
        'image':
            'https://www.holidify.com/images/cmsuploads/compressed/Bangalore_city_20190607024110.jpg',
        'title': 'Science City',
        'location': 'Kolkata',
        'star': '3.6',
        'Text':
            'Jodhpur, a city in Rajasthan, India, is known as the Blue City because of the many blue-painted ',
        'page': ScienceCity(),
      },
    ];

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Nearby your location',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SeeAllPage()),
                    );
                  },
                  child: Row(
                    children: const [
                      Text('See all', style: TextStyle(fontSize: 14)),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 210,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: places.length,
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => places[index]['page']),
                      );
                    },
                    child: Container(
                      // Wrap inside a Container to avoid errors
                      width: 150, // Give it a fixed width
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 5,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(12)),
                            child: Image.network(
                              places[index]['image']!,
                              height: 110,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Text(
                                  places[index]['title']!,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 6),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(Icons.location_on,
                                            color: Color.fromARGB(
                                                255, 0, 153, 255),
                                            size: 16),
                                        const SizedBox(width: 3),
                                        Text(
                                          places[index]['location']!,
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.star_half_rounded,
                                            color:
                                                Color.fromARGB(255, 245, 0, 0),
                                            size: 16),
                                        const SizedBox(width: 3),
                                        Text(
                                          places[index]['star']!,
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 2),
                                      Text(
                                        places[index]['Text'] ?? '',
                                        style: const TextStyle(
                                            fontSize: 8,
                                            color:
                                                Color.fromARGB(157, 2, 2, 2)),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hotels',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10), // Spacing

                // Vertical List of Hotels
                ListView.builder(
                  shrinkWrap: true,
                  physics:
                      NeverScrollableScrollPhysics(), // Prevents nested scrolling
                  itemCount: hotels.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading:
                            Icon(Icons.hotel, color: Colors.blue, size: 30),
                        title: Text(hotels[index]['name']!,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.location_on,
                                    size: 16, color: Colors.red),
                                SizedBox(width: 5),
                                Text(hotels[index]['address']!,
                                    style: TextStyle(fontSize: 12)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.phone,
                                    size: 16, color: Colors.green),
                                SizedBox(width: 5),
                                Text(hotels[index]['phone']!,
                                    style: TextStyle(fontSize: 12)),
                              ],
                            ),
                          ],
                        ),
                        trailing: Icon(Icons.arrow_forward_ios,
                            size: 16, color: Colors.grey),
                        onTap: () {
                          // Handle navigation or action
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
