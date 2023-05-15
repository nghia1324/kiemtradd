import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Add your code here
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Add your code here
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(
              'https://source.unsplash.com/500x500/?food,donut',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pink Donut',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Spicy Pink Donut Family',
                      style: TextStyle(color: Colors.grey[800]),
                    ),
                  ],
                ),
                Text(
                  '\$10.00',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(Icons.access_time),
                SizedBox(width: 5),
                Text(
                      'Delivery in\n',
                      style:
                         TextStyle(color: Colors.grey[800]),
                    ),
                    Text(
                      '\n30 min',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    // Add your code here
                  },
                ),
                SizedBox(width: 5),
                Text('2'),
                SizedBox(width: 5),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    // Add your code here
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Restaurant Info',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'A restaurant (sometimes known as a diner) is a place where cooked food is sold to the public, and where people sit down to eat it',
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.grey[800]),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                // Add your code here
              },
              style: TextButton.styleFrom(
                   backgroundColor: Colors.yellow,
                   ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  Text('Add to cart'),
                ],
              ),     
            ),
          ),
        ],
      ),
    );
  }
}
