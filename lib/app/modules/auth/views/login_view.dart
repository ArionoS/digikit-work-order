// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:digikit_w_o/app/modules/auth/views/widgets/embossed_textformfield.dart';
import 'package:digikit_w_o/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class LoginView extends GetView<AuthController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 72,
              ),
              Text(
                'Sign In',
                style: TextStyle(
                    color: ThemeData().primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Sign in to your account',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 48,
              ),
              const EmbossedTextFormField(
                hintText: 'User or Email Address',
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              EmbossedTextFormField(
                hintText: 'Password',
                prefixIcon: const Icon(
                  Icons.lock_outline_rounded,
                  color: Colors.grey,
                ),
                onSuffixIconPressed: () {},
              ),
              const SizedBox(
                height: 24,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: ThemeData().primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              SizedBox(
                width: Get.width,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {
                    Get.offAndToNamed(Routes.BOTNAV);
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shadowColor: Colors.black38,
                    elevation: 20,
                    side: BorderSide(
                      color: ThemeData().primaryColor,
                    ),
                  ),
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account ?',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: ThemeData().primaryColor,
                      ),
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.REGISTER);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
