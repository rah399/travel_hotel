import 'package:flutter/material.dart';
import 'package:travles_v1/detele/restaurant_detail_page.dart';

class RestaurantPage1 extends StatelessWidget {
  final List<Map<String, dynamic>> restaurants = [
    {
      'name': 'Suvarna Mahal',
      'image':
          'https://media-cdn.tripadvisor.com/media/photo-s/05/30/4c/5b/suvarna-mahal.jpg',
      'description':
          'A fine dining restaurant offering royal Rajasthani cuisine.',
      'rating': 4.7,
      'price': '₹2000 for two',
    },
    {
      'name': 'Chokhi Dhani',
      'image':
          'https://content.jdmagicbox.com/comp/gurgaon/27/011p71427/catalogue/chokhi-dhani-resort-sales-office-sohna-road-gurgaon-resort-bookings-4a8bjpm.png',
      'description':
          'Experience authentic Rajasthani flavors in a cultural setting.',
      'rating': 4.6,
      'price': '₹1500 for two',
    },
    {
      'name': 'Peacock Rooftop',
      'image':
          'https://media-cdn.tripadvisor.com/media/photo-s/17/3b/d6/46/an-evening-at-the-peacock.jpg',
      'description': 'A beautiful rooftop restaurant with great ambiance.',
      'rating': 4.5,
      'price': '₹1200 for two',
    },
    {
      'name': '1135 AD',
      'image':
          'https://im.whatshot.in/img/2020/Jun/jai-zarin-1591077399.jpg?w=278&h=278&cc=1&wp=1',
      'description':
          'A heritage dining experience with exquisite Mughlai and Rajasthani cuisine.',
      'rating': 4.8,
      'price': '₹2500 for two',
    },
    {
      'name': 'The Raj Palace',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmF8WK_FSi5Xr3C6m0b0ZoYXB5DYzvBe0CEQ&s',
      'description':
          'A luxurious heritage hotel with royal dining experiences.',
      'rating': 4.9,
      'price': '₹4000 for two',
    },
    {
      'name': 'Rambagh Palace',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfjHAyMkLmbhFAomBVunuk52-tCZF2TAHR7A&s',
      'description':
          'A majestic hotel offering a world-class dining experience.',
      'rating': 4.9,
      'price': '₹5000 for two',
    },
    {
      'name': 'Samode Haveli',
      'image':
          'https://q-xx.bstatic.com/xdata/images/hotel/max500/357408651.jpg?k=e4e219552fb1b65ac87b27508a907299cc6a3cc8a4eeee0cc5edd678676efa5b&o=',
      'description': 'A boutique hotel with a beautiful courtyard restaurant.',
      'rating': 4.7,
      'price': '₹3000 for two',
    },
    {
      'name': 'Bar Palladio',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLicMY24V9JuwOzVL42XxC-6EfQjHbAk_7KA&s',
      'description': 'A chic Italian restaurant with a royal blue ambiance.',
      'rating': 4.6,
      'price': '₹1800 for two',
    },
    {
      'name': 'Tapri Central',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvuzI58qjqqMQxfdRapyVE_TWEcu7_5yrQjQ&s',
      'description': 'A famous tea house known for its scenic rooftop setting.',
      'rating': 4.5,
      'price': '₹800 for two',
    },
    {
      'name': 'Laxmi Mishthan Bhandar (LMB)',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQl7MT1srGKQLD-Y3RKPfAmOApAjaDVNSjIEg&s',
      'description':
          'A legendary sweet shop and restaurant famous for Rajasthani cuisine.',
      'rating': 4.4,
      'price': '₹1000 for two',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Restaurants in Jaipur')),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.72, // Adjust aspect ratio to prevent overflow
          ),
          itemCount: restaurants.length,
          itemBuilder: (context, index) {
            var restaurant = restaurants[index];
            return buildRestaurantCard(
              context,
              restaurant['name'],
              restaurant['image'],
              restaurant['description'],
              restaurant['rating'],
              restaurant['price'],
            );
          },
        ),
      ),
    );
  }

  Widget buildRestaurantCard(BuildContext context, String name, String imageUrl,
      String description, double rating, String price) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RestaurantDetailPage(
              name: name,
              imageUrl: imageUrl,
              description: description,
              rating: rating,
              price: price,
            ),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Expandable Image to prevent overflow
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.network(
                  imageUrl,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      maxLines: 1, // Prevent overflow
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Flexible(
                      child: Text(
                        description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 14),
                        SizedBox(width: 4),
                        Text(rating.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Spacer(),
                        Text(
                          price,
                          style: TextStyle(fontSize: 12, color: Colors.green),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
