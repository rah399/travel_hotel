import 'package:flutter/material.dart';
import 'restaurant_detail_page.dart'; // Import RestaurantDetailPage

class RestaurantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Restaurants in Jaipur')), // App Bar title
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          // List of restaurant cards
          buildRestaurantCard(
              context,
              'Suvarna Mahal',
              'https://media-cdn.tripadvisor.com/media/photo-s/05/30/4c/5b/suvarna-mahal.jpg',
              'A fine dining restaurant offering royal Rajasthani cuisine.',
              4.7,
              '₹2000 for two'),
          buildRestaurantCard(
              context,
              'Chokhi Dhani',
              'https://content.jdmagicbox.com/comp/gurgaon/27/011p71427/catalogue/chokhi-dhani-resort-sales-office-sohna-road-gurgaon-resort-bookings-4a8bjpm.png',
              'Experience authentic Rajasthani flavors in a cultural setting.',
              4.6,
              '₹1500 for two'),
          buildRestaurantCard(
              context,
              'Peacock Rooftop',
              'https://media-cdn.tripadvisor.com/media/photo-s/17/3b/d6/46/an-evening-at-the-peacock.jpg',
              'A beautiful rooftop restaurant with great ambiance.',
              4.5,
              '₹1200 for two'),
          buildRestaurantCard(
              context,
              '1135 AD',
              'https://im.whatshot.in/img/2020/Jun/jai-zarin-1591077399.jpg?w=278&h=278&cc=1&wp=1',
              'A heritage dining experience with exquisite Mughlai and Rajasthani cuisine.',
              4.8,
              '₹2500 for two'),
          buildRestaurantCard(
              context,
              'The Raj Palace',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmF8WK_FSi5Xr3C6m0b0ZoYXB5DYzvBe0CEQ&s',
              'A luxurious heritage hotel with royal dining experiences.',
              4.9,
              '₹4000 for two'),
          buildRestaurantCard(
              context,
              'Rambagh Palace',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfjHAyMkLmbhFAomBVunuk52-tCZF2TAHR7A&s',
              'A majestic hotel offering a world-class dining experience.',
              4.9,
              '₹5000 for two'),
          buildRestaurantCard(
              context,
              'Samode Haveli',
              'https://q-xx.bstatic.com/xdata/images/hotel/max500/357408651.jpg?k=e4e219552fb1b65ac87b27508a907299cc6a3cc8a4eeee0cc5edd678676efa5b&o=',
              'A boutique hotel with a beautiful courtyard restaurant.',
              4.7,
              '₹3000 for two'),
        ],
      ),
    );
  }

  // Function to build each restaurant card
  Widget buildRestaurantCard(BuildContext context, String name, String imageUrl,
      String description, double rating, String price) {
    return GestureDetector(
      onTap: () {
        // Navigate to Restaurant Detail Page
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
        margin: EdgeInsets.symmetric(vertical: 10), // Space between cards
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Restaurant Image
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imageUrl,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),

              // Restaurant Name
              Text(
                name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),

              // Restaurant Description
              Text(
                description,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              SizedBox(height: 5),

              // Rating and Price Row
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 20), // Star Icon
                  SizedBox(width: 5),
                  Text(
                    rating.toString(),
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Spacer(), // Pushes price to the right
                  Text(
                    price, // Display price
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
