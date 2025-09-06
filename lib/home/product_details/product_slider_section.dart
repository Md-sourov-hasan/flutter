import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductSliderSection extends StatefulWidget {
  const ProductSliderSection({super.key});

  @override
  State<ProductSliderSection> createState() => _ProductSliderSectionState();
}

class _ProductSliderSectionState extends State<ProductSliderSection> {
  List<String> sliders = [
    'https://footballmonk.in/wp-content/uploads/2024/11/Japan-X-Uchiha-Itachi-Special-Edition-Jersey-1.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMrAlpIktNjYdUpwlnE9glQj3H6RmbAz_w6BsYjTL-imYJYlgKAK_TaSxRLievjdxhnM0&usqp=CAU',
    'https://sakkanime.com/cdn/shop/files/Itachi_89e69622-8c83-47e4-be36-2d636aed2e54_800x.png?v=1717628034'
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
              unselectedColor: Colors.grey,
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


