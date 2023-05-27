import 'package:ecommerce_project/common/widgets/reusable_button.dart';
import 'package:ecommerce_project/common/widgets/text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mart Bazaar"),
      ),
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CustomTextForm(
                    textEditingController: nameController,
                    hintText: "Enter Your Name"),
                const SizedBox(
                  height: 10,
                ),
                CustomTextForm(
                    textEditingController: emailController,
                    hintText: "Enter Your Email"),
                const SizedBox(
                  height: 10,
                ),
                CustomTextForm(
                    textEditingController: passwordController,
                    hintText: "Enter Your Password"),
                const SizedBox(
                  height: 10,
                ),
                ReusableButton(onPressed: () {}, buttonText: "Sign Up"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
