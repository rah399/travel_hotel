import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SamodeHaveli extends StatefulWidget {
  @override
  _TajRambaghPalaceState createState() => _TajRambaghPalaceState();
}

class _TajRambaghPalaceState extends State<SamodeHaveli> {
  final List<Map<String, String>> rooms = [
    {"type": "Standard Room", "price": "\$230 per night"},
    {"type": "Deluxe Room", "price": "\$340 per night"},
    {"type": "Luxury Suite", "price": "\$600 per night"},
    {"type": "Royal Suite", "price": "\$750 per night"},
    {"type": "Presidential Suite", "price": "\$1400 per night"},
    {"type": "Garden View Suite", "price": "\$800 per night"},
    {"type": "Heritage Room", "price": "\$250 per night"},
    {"type": "Maharaja Suite", "price": "\$1700 per night"},
  ];

  String? selectedRoomType;
  String? selectedRoomPrice;
  DateTime? selectedDateTime;

  // Function to pick date and time
  Future<void> _pickDateTime() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        setState(() {
          selectedDateTime = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
            pickedTime.minute,
          );
        });
      }
    }
  }

  // Function to submit selection
  void _submitSelection() {
    if (selectedRoomType != null &&
        selectedRoomPrice != null &&
        selectedDateTime != null) {
      String formattedDate =
          DateFormat('yyyy-MM-dd HH:mm').format(selectedDateTime!);

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Confirm Booking"),
          content: Text(
              "You have selected:\n$selectedRoomType - $selectedRoomPrice\nDate & Time: $formattedDate"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text(
                          "Booking confirmed for $selectedRoomType on $formattedDate")),
                );
              },
              child: Text("Confirm"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Taj Rambagh Palace')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://static.toiimg.com/thumb/msid-104495263,width-748,height-499,resizemode=4,imgsize-104064/.jpg',
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Taj Rambagh Palace',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'A luxury heritage hotel offering a royal experience.',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Rating: ⭐ 5.0',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Available Rooms:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: rooms.map((room) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedRoomType = room["type"];
                            selectedRoomPrice = room["price"];
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 3,
                          margin: EdgeInsets.symmetric(vertical: 5),
                          color: selectedRoomType == room["type"]
                              ? Colors.blue[100]
                              : null,
                          child: ListTile(
                            leading: Icon(Icons.bed, color: Colors.blue),
                            title: Text(room["type"]!),
                            subtitle: Text(room["price"]!),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        selectedDateTime == null
                            ? "Select Date & Time"
                            : "Date: ${DateFormat('yyyy-MM-dd HH:mm').format(selectedDateTime!)}",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: Icon(Icons.calendar_today, color: Colors.blue),
                        onPressed: _pickDateTime,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed:
                        (selectedRoomType != null && selectedDateTime != null)
                            ? _submitSelection
                            : null,
                    child: Text('Submit'),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
