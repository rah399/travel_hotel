import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Settings'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmgN_DxQvEkX-8Ab-pkveOHdo6PaZ0zU68ig&s'),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text('Full Name'),
              subtitle: Text('John Doe'),
              trailing: Icon(Icons.edit, color: Colors.grey),
              onTap: () {
                // Implement Edit Name functionality
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.email, color: Colors.blue),
              title: Text('Email'),
              subtitle: Text('johndoe@example.com'),
              trailing: Icon(Icons.edit, color: Colors.grey),
              onTap: () {
                // Implement Edit Email functionality
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.blue),
              title: Text('Phone Number'),
              subtitle: Text('+123 456 7890'),
              trailing: Icon(Icons.edit, color: Colors.grey),
              onTap: () {
                // Implement Edit Phone Number functionality
              },
            ),
            Divider(),
            // Address Field
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.blue),
              title: Text('Address'),
              subtitle: Text('123 Main Street, City, Country'),
              trailing: Icon(Icons.edit, color: Colors.grey),
              onTap: () {
                // Implement Edit Address functionality
                _editAddress(context);
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }

  // Function to edit the address
  void _editAddress(BuildContext context) {
    TextEditingController _addressController =
        TextEditingController(text: "123 Main Street, City, Country");

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Address'),
          content: TextField(
            controller: _addressController,
            decoration: InputDecoration(
              hintText: "Enter your address",
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Save the new address
                print("New Address: ${_addressController.text}");
                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
