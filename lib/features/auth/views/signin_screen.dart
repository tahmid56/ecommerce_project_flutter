import 'package:ecommerce_project/common/widgets/reusable_button.dart';
import 'package:ecommerce_project/common/widgets/text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInView extends ConsumerStatefulWidget {
  const SignInView({super.key});

  @override
  ConsumerState<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends ConsumerState<SignInView> {
  
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void signIn() {}
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
                ReusableButton(onPressed: () {}, buttonText: "Sign In"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
