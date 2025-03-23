import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BookingFormPage(),
  ));
}

class BookingFormPage extends StatefulWidget {
  @override
  _BookingFormPageState createState() => _BookingFormPageState();
}

class _BookingFormPageState extends State<BookingFormPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String selectedCountryCode = '+1';

  List<String> countryCodes = ['+1', '+91', '+44', '+61', '+81'];
  bool isProcessingPayment = false; // Payment processing flag

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        dateController.text = "${picked.year}-${picked.month}-${picked.day}";
      });
    }
  }

  Future<void> _selectTime() async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        timeController.text = picked.format(context);
      });
    }
  }

  void _processPayment() {
    setState(() {
      isProcessingPayment = true;
    });

    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isProcessingPayment = false;
      });

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SuccessPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book a Table')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: dateController,
                decoration: InputDecoration(
                  labelText: 'Date',
                  prefixIcon: Icon(Icons.calendar_today),
                  border: OutlineInputBorder(),
                ),
                readOnly: true,
                onTap: _selectDate,
                validator: (value) => value == null || value.isEmpty
                    ? 'Please select a date'
                    : null,
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: timeController,
                decoration: InputDecoration(
                  labelText: 'Time',
                  prefixIcon: Icon(Icons.access_time),
                  border: OutlineInputBorder(),
                ),
                readOnly: true,
                onTap: _selectTime,
                validator: (value) => value == null || value.isEmpty
                    ? 'Please select a time'
                    : null,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 120,
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      value: selectedCountryCode,
                      onChanged: (newValue) {
                        setState(() {
                          selectedCountryCode = newValue!;
                        });
                      },
                      items: countryCodes.map((code) {
                        return DropdownMenuItem<String>(
                          value: code,
                          child: Text(code),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      controller: phoneController,
                      decoration: InputDecoration(
                        labelText: 'Mobile Number',
                        prefixIcon: Icon(Icons.phone),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your mobile number';
                        }
                        if (value.length < 10) {
                          return 'Enter a valid mobile number';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              isProcessingPayment
                  ? CircularProgressIndicator() // Show loading while processing payment
                  : ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _processPayment();
                        }
                      },
                      child: Text('Book & Pay Now'),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

// Success Page
class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Booking Confirmed')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, color: Colors.green, size: 100),
            SizedBox(height: 20),
            Text(
              'Payment Successful!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Your table has been booked successfully.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text('Back to Home', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
