import 'package:flutter/material.dart';

class DetailedPage extends StatelessWidget {
  final String img;
  final String title;
  final String price;
  final BuildContext context;

  DetailedPage({this.img, this.title, this.price, this.context});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(title)),
    );
  }
}