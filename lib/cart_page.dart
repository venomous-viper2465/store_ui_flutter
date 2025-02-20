import 'package:flutter/material.dart';
import './product_data.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('Cart')),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(cart[index]['imageUrl'] as String),
            ),
            title: Text(cart[index]['title'] as String),
            subtitle: Text((cart[index]['size'] as int).toString()),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete),
            ),
          );
        },
        itemCount: cart.length,
      ),
    );
  }
}
