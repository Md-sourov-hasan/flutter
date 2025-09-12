import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_app/home/home.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final GlobalKey<FormState> loginkey = GlobalKey<FormState>();
  RxBool isLoading = false.obs;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // ✅ Login Method
  void login() async {
    if (loginkey.currentState!.validate()) {
      isLoading.value = true;
      try {
        await _auth.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );

        Get.snackbar('Success', 'Login Successfully');
        Get.offAll(() => HomeView()); // ✅ login এর পর HomeView এ নিয়ে যাবে
      } on FirebaseAuthException catch (error) {
        Get.snackbar('Error', error.message ?? 'Something went wrong');
      } finally {
        isLoading.value = false;
      }
    }
  }

  // ✅ Register Method
  void register() async {
    if (loginkey.currentState!.validate()) {
      if (passwordController.text != confirmPasswordController.text) {
        Get.snackbar('Error', 'Passwords do not match');
        return;
      }

      isLoading.value = true;
      try {
        // Create user
        final userCredential = await _auth.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );

        // ✅ Save user data in Firestore
        await _firestore.collection('users').doc(userCredential.user!.uid).set({
          'uid': userCredential.user!.uid,
          'name': nameController.text.trim(),
          'email': emailController.text.trim(),
          'phone': phoneController.text.trim(),
          'createdAt': FieldValue.serverTimestamp(),
        });

        Get.snackbar('Success', 'Register Successfully');
        Get.offAll(() => HomeView()); // ✅ register এর পর HomeView এ নিয়ে যাবে
      } on FirebaseAuthException catch (error) {
        Get.snackbar('Error', error.message ?? 'Something went wrong');
      } finally {
        isLoading.value = false;
      }
    }
  }

  // ✅ Logout Method
  void logout() async {
    await _auth.signOut();
    Get.snackbar('Logout', 'You have been logged out');
  }

  // ✅ Auth state listener (App restart হলেও auto login)
  @override
  void onReady() {
    super.onReady();
    _auth.authStateChanges().listen((User? user) {
      if (user != null) {
        // already logged in → HomeView
        Get.offAll(() => HomeView());
      }
    });
  }
}

