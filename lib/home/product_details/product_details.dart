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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProductSliderSection(), // ✅ child widget

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'jbjnjn njnjnj njk snjdsnf ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 3),

                  Row(
                    children: const [
                      Text(
                        '\$35',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        '\$40',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(115, 24, 23, 23),
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 5),
                  const Divider(
                    color: Color.fromARGB(255, 61, 60, 60),
                  ),
                  const SizedBox(height: 5),

                  const Text(
                    'Description',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Sed posuere sapien id lectus mattis, vitae consequat eros vehicula. '
                    'Curabitur vel nunc non justo cursus malesuada. Aenean fringilla ex sed '
                    'augue malesuada, nec aliquet mauris consequat. Suspendisse volutpat, '
                    'justo non finibus lacinia, lectus erat mattis purus, ut posuere enim '
                    'sem vitae odio. Cras dapibus, justo nec laoreet lacinia, velit nisi '
                    'fermentum neque, eu efficitur libero felis sit amet sapien. Integer '
                    'nec volutpat sem. Donec quis nisl eget sapien feugiat dictum. Morbi '
                    'posuere lacus sit amet.',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: 60,
        color: Colors.grey.shade200,
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {},
               child: Text('Add to cart')
               ),
            ],
          ),
        ),
      ),
    );
  }
}
