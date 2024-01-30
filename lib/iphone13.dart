import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Product {
  final String name;
  final String condition;
  final String material;
  final String category;
  final int itemNumber;
  final int price;
  final int reviews;
  final int soldQuantity;
  final double rating;

  Product({
    required this.name,
    required this.condition,
    required this.material,
    required this.category,
    required this.itemNumber,
    required this.price,
    required this.reviews,
    required this.soldQuantity,
    required this.rating,
  });
}

class SimilarProduct {
  final String productName;
  final String imageUrl;

  SimilarProduct({
    required this.productName,
    required this.imageUrl,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductDetailPage1(),
    );
  }
}

class ProductDetailPage1 extends StatelessWidget {
  final Product product = Product(
    name: 'iPhone 13',
    condition: 'Brand new',
    material: 'Plastic',
    category: 'Electronics, gadgets',
    itemNumber: 23421,
    price: 67999,
    reviews: 32,
    soldQuantity: 154,
    rating: 4.5,
  );

  final List<SimilarProduct> similarProducts = [
    SimilarProduct(
      productName: 'iPhone 13',
      imageUrl:
      'https://assets.sangeethamobiles.com/product_img/8538/1667547711_A7D.jpg',

    ),
    SimilarProduct(
      productName: 'Samsung S24 Ultra 5G',
      imageUrl:
      'https://www.reliancedigital.in/medias/Samsung-S-Series-Ultra-Mobile-Phone-494352159-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3w2NTk3OXxpbWFnZS9qcGVnfGltYWdlcy9oMzEvaGY0LzEwMTAyODc2NzY2MjM4LmpwZ3wwMmQyZmViZTk1YWNlNzU4YzZiNjAzN2VjNzFjOTM1NDEzYTQ1MDVhMmQ0NmExYTA2OGM1YzQ2MDM1NTJjYzY0',

    ),
    SimilarProduct(
      productName: 'Google Pixel 6 Pro 5G',
      imageUrl:
      'https://m.media-amazon.com/images/I/71FpXTBHDnL.SL1500.jpg',
    ),
    SimilarProduct(
      productName: 'Apple iPhone 15 Pro Max',
      imageUrl:
      'https://m.media-amazon.com/images/I/41zb7hwFUmL.SY445_SX342_QL70_FMwebp.jpg',
    ),
    SimilarProduct(
      productName: 'OnePlus Nord CE 3 5G',
      imageUrl:
      'https://m.media-amazon.com/images/I/41TmlehQnaL.SX300_SY300_QL70_FMwebp.jpg',
    ),
    SimilarProduct(
      productName: 'Oppo A78',
      imageUrl:
      'https://m.media-amazon.com/images/I/510YrcEw3-L.SX300_SY300_QL70_FMwebp.jpg',

    ),
    // Add more SimilarProduct instances as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous page
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              'https://assets.sangeethamobiles.com/product_img/8538/1667547711_A7D.jpg',
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Row(
                        children: List.generate(5, (index) {
                          // Display 5 stars
                          if (index < product.rating.floor()) {
                            return Icon(Icons.star,
                                color: Colors.yellow); // Fully filled star
                          } else if (index == product.rating.floor()) {
                            // Half-filled star
                            return Icon(Icons.star_half, color: Colors.yellow);
                          } else {
                            return Icon(Icons.star_border,
                                color: Colors.black); // Empty star
                          }
                        }),
                      ),
                      SizedBox(width: 4),
                      Text('${product.reviews} reviews'),
                      SizedBox(width: 16),
                      Icon(Icons.shopping_cart,
                          color: Colors.grey), // Grey cart icon
                      SizedBox(width: 4),
                      Text('${product.soldQuantity} sold'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Price: ₹${product.price}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Quantity: 50-100 pcs'),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Handle Buy Now action
                    },
                    child: Text('Buy Now'),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      // Handle Add to Cart action
                    },
                    child: Text('Add to Cart'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Product Information',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Condition: ${product.condition}'),
                  Text('Material: ${product.material}'),
                  Text('Category: ${product.category}'),
                  Text('Item Number: ${product.itemNumber}'),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Handle Read More action
                    },
                    child: Text('Read More'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Similar Products:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 150,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: similarProducts.map((product) {
                          return SimilarProductCard(
                            productName: product.productName,
                            imageUrl: product.imageUrl,
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Set the index of the "Cart" tab
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            // backgroundColor: null, // Remove the blue color for home button
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_android),
            label: 'Mobiles',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,
                color: Colors.grey), // Colored cart icon
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Login',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (int index) {


        },
      ),
    );
  }
}

class SimilarProductCard extends StatelessWidget {
  final String productName;
  final String imageUrl;

  SimilarProductCard({
    required this.productName,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120, // Set a fixed width for the card
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80, // Set a fixed height for the image
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover, // Adjust the fit property
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                productName,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}