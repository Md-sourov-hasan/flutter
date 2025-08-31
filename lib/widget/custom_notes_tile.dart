import 'package:flutter/widgets.dart';

class CustomNotesTile extends StatelessWidget{
  const CustomNotesTile({super.key});

  @override
  Widget build(BuildContext context) {
  return Container(
            height: 70,
            decoration: BoxDecoration(
              color: Color(0xFFf5f5f5f5f5f5f5),
              borderRadius: BorderRadius.circular(11),
            ),
          );
  }
}