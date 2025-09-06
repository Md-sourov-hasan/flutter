import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
        scrolledUnderElevation: 0,
      ),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        itemBuilder: (_,index) {
          return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage('https://www.uaejersey.com/cdn/shop/files/japan-itachi-special-edition-jersey-2425-556910.webp?v=1720110418'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        'white t shirt',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      Text('\$50.0'),
                      SizedBox(height: 3,),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color.fromARGB(255, 139, 139, 135),
                            ),
                            child: Center(
                              child: Icon(Icons.remove,color: Colors.white, size: 15,),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text('5',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color.fromARGB(255, 139, 139, 135),
                            ),
                            child: Center(
                              child: Icon(Icons.add,color: Colors.white, size: 15,),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                  ),
              ],
            ) ,
          );
        }, 
        separatorBuilder:(_,index) {
          return SizedBox(
            height: 10,
          );
        } , 
        itemCount: 5,
        ),
        bottomNavigationBar: Container(
        height: 60,
        color: Colors.grey.shade200,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total:\$500.00',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                ),
                ),
                ElevatedButton(onPressed: () {},
                 child: Text('cheakout')
                 ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}