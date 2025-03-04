import 'package:flutter/material.dart';

import 'package:store_ui_flutter/product_card.dart';
import 'package:store_ui_flutter/product_data.dart';
import 'package:store_ui_flutter/product_details_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> filters = [
    'All',
    'Adidas',
    'Nike',
    'Bata',
  ];
  late String selectedFilter;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedFilter = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 28,
                ),
                child: Text(
                  'Shoe\nCollection',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedFilter = filters[index];
                      });
                    },
                    child: Chip(
                      backgroundColor: selectedFilter == filters[index]
                          ? Color.fromRGBO(255, 183, 3, 1)
                          : Color.fromRGBO(239, 239, 240, 1),
                      label: Text('${filters[index]}'),
                      labelStyle: TextStyle(fontSize: 16),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 14,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                );
              },
              itemCount: filters.length,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return ProductDetailsPage(product: products[index]);
                        },
                      ),
                    );
                  },
                  child: ProductCard(
                    image: products[index]['imageUrl'] as String,
                    title: products[index]['title'] as String,
                    price: products[index]['price'] as double,
                  ),
                );
              },
              itemCount: products.length,
            ),
          ),
        ],
      ),
    );
  }
}
