import 'package:flutter/widgets.dart';

class CustomNotesTile extends StatelessWidget{
  const CustomNotesTile({super.key});

  @override
  Widget build(BuildContext context) {
  return Container(
            height: 70,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color:const Color(0xFFf5f5f5f5f5f5f5),
              borderRadius: BorderRadius.circular(11),
            ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Title Here',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                  )
                ],
              ),
          );
  }
}