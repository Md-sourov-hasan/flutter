import 'package:first_app/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: controller.loginkey,
          child: Column(
            children: [
              TextFormField(
                controller: controller.nameController,
                decoration: const InputDecoration(hintText: 'Name'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: controller.emailController,
                decoration: const InputDecoration(hintText: 'Email'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: controller.phoneController,
                decoration: const InputDecoration(hintText: 'Phone'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: controller.passwordController,
                obscureText: true,
                decoration: const InputDecoration(hintText: 'Password'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: controller.confirmPasswordController,
                obscureText: true,
                decoration: const InputDecoration(hintText: 'Confirm Password'),
              ),
              const SizedBox(height: 10),
              Obx(() => ElevatedButton(
                    onPressed: () => controller.register(),
                    child: Text(
                        controller.isLoading.value ? 'Loading...' : 'Register'),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
