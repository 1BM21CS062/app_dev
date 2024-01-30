import 'package:flutter/material.dart';
import 'package:untitled/homepage.dart';



class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=> ECommerceApp())
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/profile_image.jpg'),
            ),
            SizedBox(height: 16.0),
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'john.doe@example.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 32.0),
            Text(
              'Order History',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            OrderItem(orderNumber: 'Order #1234', date: 'Jan 25, 2024', total: '\$120.00'),
            OrderItem(orderNumber: 'Order #5678', date: 'Feb 10, 2024', total: '\$75.50'),
            // Add more OrderItem widgets for additional orders
          ],
        ),
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  final String orderNumber;
  final String date;
  final String total;

  OrderItem({required this.orderNumber, required this.date, required this.total});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        title: Text(orderNumber),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.0),
            Text('Date: $date'),
            SizedBox(height: 8.0),
            Text('Total: $total'),
          ],
        ),
        onTap: () {
          // Handle tapping on the order item
        },
      ),
    );
  }
}
