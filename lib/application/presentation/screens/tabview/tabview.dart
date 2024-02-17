import 'package:flutter/material.dart';

class ScreenTabView extends StatelessWidget {
  const ScreenTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coupons"),
      ),
      body: const Center(
        child: Text("cOUPOUNS"),
      ),
    );
  }
}
