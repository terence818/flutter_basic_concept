import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: ListView(
        children: <Widget>[
          _buildCartItem(),
          _buildCartItem(),
          _buildCartItem(),
        ],
      ),
    );
  }

  Widget _buildCartItem() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.network(
              'https://via.placeholder.com/80x80',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Product Name', style: TextStyle(fontSize: 18)),
              SizedBox(height: 4),
              Text('\$50', style: TextStyle(color: Colors.grey)),
            ],
          ),
          Spacer(),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text('1', style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
      ),
    );
  }
}
