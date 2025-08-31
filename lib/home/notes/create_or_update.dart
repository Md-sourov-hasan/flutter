import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateOrUpdateNoteView extends StatelessWidget{
  const CreateOrUpdateNoteView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFf5f5f5f5f5f5f5),
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: () {

          
        }, 
        
        icon: Icon(
          Icons.arrow_back

        )),
      ),
    );
  }
}