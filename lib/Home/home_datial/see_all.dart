import 'package:flutter/material.dart';
import 'package:travles_v1/Home/home_datial/blue_city.dart';
import 'package:travles_v1/Home/home_datial/city_of_palaces.dart';
import 'package:travles_v1/Home/home_datial/diamond_city.dart';
import 'package:travles_v1/Home/home_datial/pink_city.dart';
import 'package:travles_v1/Home/home_datial/sience_city.dart';

class SeeAllPage extends StatefulWidget {
  @override
  _SeeAllPageState createState() => _SeeAllPageState();
}

class _SeeAllPageState extends State<SeeAllPage> {
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
  ];

  Set<Map<String, dynamic>> likedPlaces = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('All Places')),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: places.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => places[index]['page']),
                      );
                    },
                    child: ClipRRect(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(12)),
                      child: Image.network(
                        places[index]['image']!,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              places[index]['title']!,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              icon: Icon(
                                likedPlaces.contains(places[index])
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: likedPlaces.contains(places[index])
                                    ? Colors.red
                                    : Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (likedPlaces.contains(places[index])) {
                                    likedPlaces.remove(places[index]);
                                  } else {
                                    likedPlaces.add(places[index]);
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.location_on,
                                color: Colors.blue, size: 16),
                            const SizedBox(width: 5),
                            Text(places[index]['location']!,
                                style: const TextStyle(fontSize: 14)),
                            const Spacer(),
                            const Icon(Icons.star, color: Colors.red, size: 16),
                            const SizedBox(width: 5),
                            Text(places[index]['star']!,
                                style: const TextStyle(fontSize: 14)),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(places[index]['Text'] ?? '',
                            style: const TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Liked'),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      LikedPlacesPage(likedPlaces: likedPlaces)),
            );
          }
        },
      ),
    );
  }
}

class LikedPlacesPage extends StatelessWidget {
  final Set<Map<String, dynamic>> likedPlaces;
  LikedPlacesPage({required this.likedPlaces});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Liked Places')),
      body: ListView(
        children: likedPlaces
            .map((place) => ListTile(
                  leading: Image.network(place['image'],
                      width: 50, height: 50, fit: BoxFit.cover),
                  title: Text(place['title']),
                  subtitle: Text(place['location']),
                ))
            .toList(),
      ),
    );
  }
}
