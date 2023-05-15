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
        title: Text(''),
        actions: [
          IconButton(
            icon: CircleAvatar(child: Icon(Icons.person)),
            onPressed: () {
              // Add your code here
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Welcome, jalal\n'
              'Choice your Best Food',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search food',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      // Add your code here
                    },
                  )),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add your code here
                  },
                  style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  ),
                  child: Text('Donut'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add your code here
                  },
                  style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  ),
                  child: Text('Pink Donut'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add your code here
                  },
                  style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  ),
                  child: Text('Floating'),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProductCard(
                    'https://source.unsplash.com/500x500/?food,donut',
                    'Tasty Donut',
                    'Spicy Tasty Donut family\n\$10.00',
                  ),
                  ProductCard(
                    'https://source.unsplash.com/500x500/?food,pink',
                    'Pink Donut',
                    'Spicy Tasty Donut family\n\$20.00',
                  ),
                  ProductCard(
                    'https://source.unsplash.com/500x500/?food,cookies',
                    'Floating Donut',
                    'Spicy Tasty Donut family\n\$30.00',
                  ),
                  ProductCard(
                    'https://source.unsplash.com/500x500/?food,cake',
                    'Cake',
                    'Spicy Tasty Donut family\n\$50.00',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String description;

  ProductCard(this.imageUrl, this.name, this.description);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(imageUrl, height: 150, fit: BoxFit.cover),
              SizedBox(height: 10),
              Text(name, style: TextStyle(fontSize: 18)),
              SizedBox(height: 5),
              Text(description),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Add your code here
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_shopping_cart),
                    SizedBox(width: 5),
                    Text('Add to cart'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
