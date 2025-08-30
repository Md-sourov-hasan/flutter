import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget{

const CustomButton({super.key});

@override
  Widget build(BuildContext context) {
    return Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50),

                ),
                child: Center(
                  child: Text('get started',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              );
  }

}