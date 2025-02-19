import 'package:flutter/material.dart';
import 'package:store_ui_flutter/home_page..dart';
import 'package:store_ui_flutter/product_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(254, 206, 1, 1),
          primary: Color.fromRGBO(254, 206, 1, 1),
        ),
        textTheme: TextTheme(
            bodyMedium: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            bodySmall: TextStyle(
              fontSize: 13,
            ),
            titleLarge: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
      title: 'Shoe Store',
      home: ProductDetailsPage(),
    );
  }
}
