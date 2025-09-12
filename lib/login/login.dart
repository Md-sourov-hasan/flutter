import 'package:first_app/controller/auth_controller.dart';
import 'package:first_app/login/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: controller.loginkey,
          child: Column(
            children: [
              TextFormField(
                controller: controller.emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field cannot be empty';
                  }
                  return null;
                },
                decoration: const InputDecoration(hintText: 'Email'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: controller.passwordController,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field cannot be empty';
                  }
                  return null;
                },
                decoration: const InputDecoration(hintText: 'Password'),
              ),
              const SizedBox(height: 20),
              Obx(() {
                return ElevatedButton(
                  onPressed: () => controller.login(),
                  child: Text(controller.isLoading.value ? 'Loading...' : 'Login'),
                );
              }),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Get.to(() => const RegisterView()),
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
