import 'package:flutter/material.dart';
import 'package:store_ui_flutter/product_data.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Details',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              products[0]['title'] as String,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                products[0]['imageUrl'] as String,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Container(
              padding: EdgeInsets.only(
                top: 16,
                left: 16,
                right: 16,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(202, 240, 248, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${products[0]['price'] as double}',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(8),
                          child: Chip(
                            label: Text(
                                '${(products[0]['sizes'] as List<int>)[index]}'),
                            labelStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        );
                      },
                      itemCount: (products[0]['sizes'] as List<int>).length,
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    label: Text(
                      'Add to cart',
                    ),
                    icon: Icon(
                      Icons.shop,
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Colors.white,
                      iconColor: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
