import 'package:flutter/material.dart';

class HelpSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Help & Support')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            "Frequently Asked Questions",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ExpansionTile(
            title: Text("How can I reset my password?"),
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "To reset your password, go to the login page and click on 'Forgot Password'. Follow the instructions to reset it via email.",
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("How do I cancel a booking?"),
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Go to 'Room Bookings' or 'Hotel Bookings', select your reservation, and click 'Cancel Booking'.",
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("How do I contact customer support?"),
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "You can contact us via email at support@travles.com or call us at +123 456 7890.",
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(),
          SizedBox(height: 10),
          Text(
            "Contact Us",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          ListTile(
            leading: Icon(Icons.email, color: Colors.blue),
            title: Text("Email Support"),
            subtitle: Text("support@travles.com"),
            onTap: () {
              // Handle email action
            },
          ),
          ListTile(
            leading: Icon(Icons.phone, color: Colors.blue),
            title: Text("Call Support"),
            subtitle: Text("+123 456 7890"),
            onTap: () {
              // Handle call action
            },
          ),
          Divider(),
          SizedBox(height: 10),
          ElevatedButton.icon(
            icon: Icon(Icons.report_problem, color: Colors.white),
            label: Text("Report a Problem"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: EdgeInsets.symmetric(vertical: 15),
            ),
            onPressed: () {
              // Navigate to Report Problem Page
            },
          ),
        ],
      ),
    );
  }
}
