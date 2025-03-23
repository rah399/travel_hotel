import 'package:flutter/material.dart';
import 'success_page.dart'; // Import the Success Page
// Import the Booking Form Page

class RestaurantDetailPage extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String description;
  final double rating;
  final String price; // Added price field

  // Constructor to receive restaurant details
  RestaurantDetailPage({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.rating,
    required this.price, // Assign price
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)), // App bar with restaurant name
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Restaurant image
            Image.network(
              imageUrl,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Restaurant name
                  Text(
                    name,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),

                  // Rating display with star icon
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      SizedBox(width: 5),
                      Text(
                        rating.toString(),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  // Restaurant description
                  Text(
                    description,
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  SizedBox(height: 10),

                  // Displaying the price of the restaurant
                  Text(
                    "Price: $price",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // Floating Action Button (FAB) for Booking
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    BookingFormPage()), // Navigate to Booking Form Page
          );
        },
        icon: Icon(Icons.book_online), // Booking Icon
        label: Text('Book Now'), // Button label
        backgroundColor: Colors.green, // Button color
      ),
    );
  }
}
