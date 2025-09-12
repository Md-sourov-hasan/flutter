import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> height =[
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
              StreamBuilder(
                stream: FirebaseFirestore.instance.collection('categories').snapshots(), 
                builder: (context,snapshot) {
                  if(snapshot.connectionState==ConnectionState.waiting){
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  };
                  if(snapshot.hasError){
                    print('eror  is ${snapshot.error.toString()}');
                  }
                 return             SizedBox(
              height: 80,
              child: ListView.separated(
                itemCount: snapshot.data!.docs.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_,index) {
                  final Category=snapshot.data!.docs[index];
                  return Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 224, 228, 224),
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(Category['icon']),
                      ),
                      SizedBox(height: 5,),
                      Text(Category['name'],
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
            );
                },
                ),
        ],
      ),
    );
  }
}