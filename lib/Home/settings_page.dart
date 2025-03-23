import 'package:flutter/material.dart';
import 'package:travles_v1/Home/account_page.dart';
import 'package:travles_v1/Home/setting/gaide.dart';
import 'package:travles_v1/Home/setting/help_support.dart'; // Import Help & Support Page

import 'package:travles_v1/login/login_page.dart';
import 'package:travles_v1/setting/hotel_booking.dart';
import 'package:travles_v1/setting/resaurant_page.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")), // Added AppBar
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.account_circle, color: Colors.blue),
            title: Text('Account Settings'),
            subtitle: Text('Manage your account details'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountPage()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.favorite, color: Colors.blue),
            title: Text('Liked Items'),
            subtitle: Text('View your liked items'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GaidePage()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.home, color: Colors.blue),
            title: Text('Room Bookings'),
            subtitle: Text('View and manage your room bookings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RestaurantPage1()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.hotel_outlined, color: Colors.blue),
            title: Text('Hotel Bookings'),
            subtitle: Text('View and manage your hotel bookings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HotelPage1()), // Corrected Navigation
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.help_outline, color: Colors.blue),
            title: Text('Help & Support'),
            subtitle: Text('Get help or report a problem'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        HelpSupportPage()), // Corrected Navigation
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text('Logout', style: TextStyle(color: Colors.red)),
            onTap: () {
              _logout(context);
            },
          ),
        ],
      ),
    );
  }

  void _logout(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Logout"),
          content: Text("Are you sure you want to logout?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                  (route) => false,
                );
              },
              child: Text("Logout", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
}

// Dummy Liked Items Page
class LikedItemsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Liked Items')),
      body: Center(child: Text('Your liked items will appear here')),
    );
  }
}

// Dummy Room Bookings Page
class RoomBookingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Room Bookings')),
      body: Center(child: Text('Your room bookings will appear here')),
    );
  }
}

// Dummy Hotel Bookings Page
class HotelBookingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hotel Bookings')),
      body: Center(child: Text('Your hotel bookings will appear here')),
    );
  }
}
