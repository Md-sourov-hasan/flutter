import 'package:flutter/material.dart';
import 'package:first_app/home/product_details/product_slider_section.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: const [
          ProductSliderSection(), // সেমিকোলন বাদ দিয়ে কমা (,) ব্যবহার করা হয়েছে

          Column(
            children: [
              Text('jbjnjn njnjnj njk snjdsnf ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
