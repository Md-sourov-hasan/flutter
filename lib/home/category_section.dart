import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> Categories =[
      {
        'name': 'Fashion',
        'icon': Icons.man,
      },
      {
        'name':'electronics',
        'icon':Icons.computer,
      },
      
      {
        'name':'aplication',
        "icon":Icons.app_blocking,
      },
      {
        'name': 'Fashion',
        'icon': Icons.man,
      },
      {
        'name':'electronics',
        'icon':Icons.computer,
      },
      
      {
        'name':'aplication',
        "icon":Icons.app_blocking,
      },
      
      
    ];
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Category',
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
            SizedBox(
              height: 80,
              child: ListView.separated(
                itemCount: Categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_,index) {


                  return Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 224, 228, 224),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Categories[index]['icon'],
                        color: Colors.green,
                        size: 30,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(Categories[index]['name'],
                      style: TextStyle(
                        fontSize: 10,
                      ),
                      )
                    ],
                  );
                },
                separatorBuilder: (_, index) {
                  return SizedBox(
                    width: 15,
                  );
                }
                
                ),
            )
        ],
      ),
    );
  }
}