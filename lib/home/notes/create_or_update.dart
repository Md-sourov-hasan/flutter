import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';

class CreateOrUpdateNoteView extends StatelessWidget{
  const CreateOrUpdateNoteView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFf5f5f5f5f5f5f5),
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: () {
          Get.back();

        }, 
        
        icon: Icon(
          Icons.arrow_back

        )),
        title: Text('create note'),
        centerTitle: false,
        actions: [
          TextButton(onPressed: () {}, child: const Icon(Icons.done)
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextFormField(
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Tile",
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 87, 84, 84), 
                ),
              ),
            ),
            SizedBox(
                height: 10,
            ),
            Expanded(
              child: TextFormField(
                minLines: 40,
                maxLines: 40,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Note something down",
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 87, 84, 84), 
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}