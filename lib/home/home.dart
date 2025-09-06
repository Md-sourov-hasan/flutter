import 'package:first_app/home/category_section.dart';
import 'package:first_app/home/sections/products_section.dart';
import 'package:first_app/home/slider_section.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Text('Home'),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
           IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
    body: SingleChildScrollView(
      child: Column(
        children: [
           CategorySection(),
           SizedBox(height: 10,),
             SliderSection(),
             SizedBox(height: 10,),
             ProductsSection(),
        ],
      ),
    ),
    );
  }
}