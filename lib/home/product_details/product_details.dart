import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> sliders = [
      'https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltca0defe0e9c1b630/67b844be273493d43a833ed1/28513-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=3840',
      'https://zippo.co.za/cdn/shop/files/1OB36-03.png?v=1697700018',
      'https://www.thebeachcompany.in/cdn/shop/products/121123901_g1_800x.jpg?v=1673418204'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('product details'),
      ),
      body: Column(
        children: [
          CarouselSlider.builder(
            itemCount: sliders.length, 
            itemBuilder: (context,index,PageIndex){
              return Container(decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(sliders[index]),
                  fit: BoxFit.cover,
                ),
              ),);
            }, 
            options: CarouselOptions(
              height: 300,
              viewportFraction: 1,
            ),
            )
        ],
      ),
    );
  }
}