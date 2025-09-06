import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductSliderSec extends StatefulWidget {
  const ProductSliderSec({super.key});

  @override
  State<ProductSliderSec> createState() => _ProductSliderSecState();
}

class _ProductSliderSecState extends State<ProductSliderSec> {
  List<String> sliders = [
    'https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltca0defe0e9c1b630/67b844be273493d43a833ed1/28513-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=3840',
    'https://zippo.co.za/cdn/shop/files/1OB36-03.png?v=1697700018',
    'https://www.thebeachcompany.in/cdn/shop/products/121123901_g1_800x.jpg?v=1673418204'
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: sliders.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(sliders[index]),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: 300,
        viewportFraction: 1,
        autoPlay: false, // চাইলে auto slide করতে পারো
      ),
    );
  }
}
