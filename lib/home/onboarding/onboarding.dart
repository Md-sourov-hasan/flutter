import 'package:first_app/widget/custom_button.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/question.png'),
              Text('welcome to the app',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text('lorem spat amet joy bangla ala jabi fi jama ratet tamaria amari ore jao jao ha wren woren oyari bujchen ni ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color:  Color.fromARGB(255, 58, 56, 56),
              ),
              ),
              CustomButton(
                 label: 'Get Started',
                 onTap: () {},
              ),

            ],
          ),
        ),
      ),
    );
  }
}
