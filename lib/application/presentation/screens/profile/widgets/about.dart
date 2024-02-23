import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhite,
        title: const Text(
          'About',
          style: TextStyle(color: Colors.black),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(20.0), child: Text("""About Kicks

Kicks is an educational e-commerce application designed to showcase different brands of sneakers. It provides users with a realistic e-commerce experience, allowing them to browse, add items to their wishlist and cart, and even place dummy orders. However, it's important to note that Kicks APP is solely for educational purposes and does not facilitate actual transactions.

Our Purpose

Kicks aims to provide an engaging and interactive learning experience for aspiring e-commerce developers. It demonstrates the fundamental concepts of e-commerce applications, including user authentication, product management, shopping cart functionality, and dummy payment processing.

Features

User login using mobile number, name, email, and password
Browse a variety of sports jerseys
Add items to wishlist and cart
Place dummy orders
Dummy payment processing using Razorpay instance
Disclaimer

Please note that Kicks sneakerapp is solely for educational purposes. All transactions and payments are simulated and do not reflect actual financial transactions. """)),
      ),
    );
  }
}
