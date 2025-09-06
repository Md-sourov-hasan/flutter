import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductSliderSection extends StatefulWidget {
  const ProductSliderSection({super.key});

  @override
  State<ProductSliderSection> createState() => _ProductSliderSectionState();
}

class _ProductSliderSectionState extends State<ProductSliderSection> {
  List<String> sliders = [
    'https://eu-images.contentstack.com/v3/assets/blt7dcd2cfbc90d45de/bltca0defe0e9c1b630/67b844be273493d43a833ed1/28513-1.jpg?format=pjpg&auto=webp&quality=75%2C90&width=3840',
    'https://zippo.co.za/cdn/shop/files/1OB36-03.png?v=1697700018',
    'https://www.thebeachcompany.in/cdn/shop/products/121123901_g1_800x.jpg?v=1673418204'
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: sliders.length,
          itemBuilder: (context, index, realIndex) {
            return Container(
              width: double.infinity,
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
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),

        // Dot Indicator Positioned
        Positioned(
          bottom: 16,
          left: 0,
          right: 0,
          child: Center(
            child: PageViewDotIndicator(
              currentItem: currentIndex,
              count: sliders.length,
              unselectedColor: Colors.grey.withOpacity(0.6),
              selectedColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

/// Dot Indicator Widget (same file)
class PageViewDotIndicator extends StatelessWidget {
  final int currentItem;
  final int count;
  final Color selectedColor;
  final Color unselectedColor;

  const PageViewDotIndicator({
    super.key,
    required this.currentItem,
    required this.count,
    this.selectedColor = Colors.white,
    this.unselectedColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: currentItem == index ? 12 : 8,
          height: currentItem == index ? 12 : 8,
          decoration: BoxDecoration(
            color: currentItem == index ? selectedColor : unselectedColor,
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}


