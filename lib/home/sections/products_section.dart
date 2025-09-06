import 'package:flutter/material.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Resent Products',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                ),
                Text('View more',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
                ),
              ],
            ),
            SizedBox(height: 10,),         
           GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
            ),
             itemBuilder: (_,index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 150,                   
                    decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(image: NetworkImage('https://www.uaejersey.com/cdn/shop/files/japan-itachi-special-edition-jersey-2425-556910.webp?v=1720110418',),
                      fit: BoxFit.cover,
                      )
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text('Itachi Uchiha'),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Text('\$35',
                 style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                 ),
                 ),
                 SizedBox(width: 5,),
                 Text('\$40',
                 style: TextStyle(
                  fontSize: 12,
                  color: const Color.fromARGB(115, 46, 44, 44),
                  decoration: TextDecoration.lineThrough,
                 ),
                 ),
                    ],
                  ),
                 
                ],
              );
             },
             ),
       ],
      ),
    );
  }
}