import 'package:flutter/material.dart';

class GaidePage extends StatefulWidget {
  @override
  _GaidePageState createState() => _GaidePageState();
}

class _GaidePageState extends State<GaidePage> {
  List<Map<String, dynamic>> savedPlaces = [
    {
      'image':
          'https://www.holidify.com/images/cmsuploads/compressed/Queen_Victoria27s_Palace2C_Kolkata_20190607024920.jpg',
      'title': 'City of Palaces',
      'location': 'Mysore',
      'rating': '4.1',
      'description':
          'Developed by the National Council of Science Museums, it is one of the largest and finest in the world',
      'liked': false, // Track like status
    },
    {
      'image':
          'https://www.holidify.com/images/cmsuploads/compressed/Bangalore_city_20190607024110.jpg',
      'title': 'Science City',
      'location': 'Kolkata',
      'rating': '3.6',
      'description':
          'Jodhpur, a city in Rajasthan, India, is known as the Blue City because of the many blue-painted houses.',
      'liked': false, // Track like status
    },
    {
      'image':
          'https://www.holidify.com/images/cmsuploads/compressed/Hawa_Mahal_in_Pink_City_Jaipur_Rajasthan_20190607020715.jpg',
      'title': 'Pink City',
      'location': 'Jaipur',
      'rating': '4.3',
      'description':
          'Jaipur is known as the Pink City because of its many pink-colored buildings.',
      'liked': false,
    },
    {
      'image':
          'https://www.holidify.com/images/cmsuploads/compressed/27523762949_834dee1a15_b_20190607020936.jpg',
      'title': 'Blue City',
      'location': 'Jodhpur',
      'rating': '4.0',
      'description':
          'Jodhpur is called the Blue City due to its blue-painted houses.',
      'liked': false,
    },
    {
      'image':
          'https://www.holidify.com/images/cmsuploads/compressed/in-some-3110417_960_720_20190607022056.jpg',
      'title': 'Diamond City',
      'location': 'Surat',
      'rating': '5.0',
      'description':
          'Surat is a major diamond hub, known for diamond mining and trading.',
      'liked': false,
    },
    {
      'image':
          'https://www.holidify.com/images/cmsuploads/compressed/Hawa_Mahal_in_Pink_City_Jaipur_Rajasthan_20190607020715.jpg',
      'title': 'Pink City',
      'location': 'Jaipur',
      'rating': '4.3',
      'description':
          'Jaipur is known as the Pink City because of its many pink-colored buildings.',
      'liked': false,
    },
    {
      'image':
          'https://www.holidify.com/images/cmsuploads/compressed/27523762949_834dee1a15_b_20190607020936.jpg',
      'title': 'Blue City',
      'location': 'Jodhpur',
      'rating': '4.0',
      'description':
          'Jodhpur is called the Blue City due to its blue-painted houses.',
      'liked': false,
    },
    {
      'image':
          'https://www.holidify.com/images/cmsuploads/compressed/in-some-3110417_960_720_20190607022056.jpg',
      'title': 'Diamond City',
      'location': 'Surat',
      'rating': '5.0',
      'description':
          'Surat is a major diamond hub, known for diamond mining and trading.',
      'liked': false,
    },
    {
      'image':
          'https://www.holidify.com/images/cmsuploads/compressed/Hawa_Mahal_in_Pink_City_Jaipur_Rajasthan_20190607020715.jpg',
      'title': 'Pink City',
      'location': 'Jaipur',
      'rating': '4.3',
      'description':
          'Jaipur is known as the Pink City because of its many pink-colored buildings.',
      'liked': false,
    },
    {
      'image':
          'https://www.holidify.com/images/cmsuploads/compressed/27523762949_834dee1a15_b_20190607020936.jpg',
      'title': 'Blue City',
      'location': 'Jodhpur',
      'rating': '4.0',
      'description':
          'Jodhpur is called the Blue City due to its blue-painted houses.',
      'liked': false,
    },
    {
      'image':
          'https://www.holidify.com/images/cmsuploads/compressed/in-some-3110417_960_720_20190607022056.jpg',
      'title': 'Diamond City',
      'location': 'Surat',
      'rating': '5.0',
      'description':
          'Surat is a major diamond hub, known for diamond mining and trading.',
      'liked': false,
    },
    {
      'image':
          'https://www.holidify.com/images/cmsuploads/compressed/Hawa_Mahal_in_Pink_City_Jaipur_Rajasthan_20190607020715.jpg',
      'title': 'Pink City',
      'location': 'Jaipur',
      'rating': '4.3',
      'description':
          'Jaipur is known as the Pink City because of its many pink-colored buildings.',
      'liked': false,
    },
    {
      'image':
          'https://www.holidify.com/images/cmsuploads/compressed/27523762949_834dee1a15_b_20190607020936.jpg',
      'title': 'Blue City',
      'location': 'Jodhpur',
      'rating': '4.0',
      'description':
          'Jodhpur is called the Blue City due to its blue-painted houses.',
      'liked': false,
    },
    {
      'image':
          'https://www.holidify.com/images/cmsuploads/compressed/in-some-3110417_960_720_20190607022056.jpg',
      'title': 'Diamond City',
      'location': 'Surat',
      'rating': '5.0',
      'description':
          'Surat is a major diamond hub, known for diamond mining and trading.',
      'liked': false,
    },
    {
      'image':
          'https://www.holidify.com/images/cmsuploads/compressed/Hawa_Mahal_in_Pink_City_Jaipur_Rajasthan_20190607020715.jpg',
      'title': 'Pink City',
      'location': 'Jaipur',
      'rating': '4.3',
      'description':
          'Jaipur in India is known as the Pink City because of the many pink-colored buildings',
      'liked': false,
    },
    {
      'image':
          'https://www.holidify.com/images/cmsuploads/compressed/27523762949_834dee1a15_b_20190607020936.jpg',
      'title': 'Blue City',
      'location': 'Jodhpur',
      'rating': '4.0',
      'description':
          'Jodhpur, a city in Rajasthan, India, is known as the Blue City because of the many blue-painted ',
      'liked': false,
    },
    {
      'image':
          'https://www.holidify.com/images/cmsuploads/compressed/in-some-3110417_960_720_20190607022056.jpg',
      'title': 'Diamond City',
      'location': 'Surat',
      'rating': '5.0',
      'description':
          'A major center of diamond mining, with an economy that was once founded on the gems. ',
      'liked': false,
    },
  ];

  void toggleLike(int index) {
    setState(() {
      savedPlaces[index]['liked'] = !savedPlaces[index]['liked'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Items'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite, color: Colors.red),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LikedPlacesPage(
                    savedPlaces
                        .where((place) => place['liked'] == true)
                        .toList(),
                    toggleLike,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: savedPlaces.isEmpty
          ? Center(
              child: Text(
                'Your saved places will appear here.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: savedPlaces.length,
              itemBuilder: (context, index) {
                var place = savedPlaces[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 5,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        place['image'],
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      place['title'],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(place['location']),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 16),
                            SizedBox(width: 4),
                            Text(place['rating']),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          place['description'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        place['liked'] ? Icons.favorite : Icons.favorite_border,
                        color: place['liked'] ? Colors.red : Colors.grey,
                      ),
                      onPressed: () {
                        toggleLike(index);
                      },
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(place: place),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}

class LikedPlacesPage extends StatelessWidget {
  final List<Map<String, dynamic>> likedPlaces;
  final Function(int) toggleLike;

  LikedPlacesPage(this.likedPlaces, this.toggleLike);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Liked Places')),
      body: likedPlaces.isEmpty
          ? Center(
              child: Text(
                'No liked places yet.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: likedPlaces.length,
              itemBuilder: (context, index) {
                var place = likedPlaces[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 5,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        place['image'],
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      place['title'],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(place['location']),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 16),
                            SizedBox(width: 4),
                            Text(place['rating']),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          place['description'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.favorite, color: Colors.red),
                      onPressed: () {
                        toggleLike(index);
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Map<String, dynamic> place;

  DetailPage({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(place['title'])),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            place['image'],
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  place['title'],
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.blue),
                    SizedBox(width: 5),
                    Text(place['location']),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    SizedBox(width: 5),
                    Text('Rating: ${place['rating']}'),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  place['description'],
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
