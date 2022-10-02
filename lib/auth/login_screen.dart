// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:nasa_app/main.dart';

import '../utils/screen_size.dart';
import '../utils/util.dart';
import 'forgot_screen.dart';

class LoginWidget extends StatefulWidget {
  final VoidCallback onClickRegister;
  const LoginWidget({
    Key? key,
    required this.onClickRegister,
  }) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final state = FirebaseAuth.instance.authStateChanges();

  @override
  Widget build(BuildContext context) {
    bool viewpass = true;
    final formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: useScreenHeight(15)),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: useScreenHeight(40)),
              SizedBox(
                height: useScreenHeight(250),
                width: useScreenWidth(400),
                child:
                    Image.asset("assets/images/38055082-removebg-preview.png"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome back to NASA! ",
                        style: TextStyle(
                            wordSpacing: useScreenWidth(5),
                            letterSpacing: useScreenWidth(1),
                            color: Colors.black,
                            fontSize: useScreenHeight(18),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: useScreenHeight(4)),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: useScreenWidth(15)),
                        child: Text(
                          'Keep your data safe!',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: useScreenHeight(15)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: useScreenHeight(25)),
              Container(
                // height: useScreenHeight(50),
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: emailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (email) =>
                      email != null && !EmailValidator.validate(email)
                          ? 'enter a valid email'
                          : null,
                  cursorHeight: useScreenHeight(25),
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                      hintText: 'Email',
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.mail)),
                ),
              ),
              SizedBox(height: useScreenHeight(15)),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  obscureText: viewpass,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) => val != null && val.length < 6
                      ? 'Enter more than 5 character'
                      : null,
                  controller: passwordController,
                  cursorHeight: useScreenHeight(25),
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
              ),
              SizedBox(height: useScreenHeight(20)),
              InkWell(
                onTap: login,
                child: Container(
                  height: useScreenHeight(60),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(useScreenWidth(12)),
                  ),
                  child: Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: useScreenHeight(16),
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              SizedBox(height: useScreenHeight(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ForgotPasswordScreen(),
                          )),
                      child: const Text("Forget password?",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.w500)))
                ],
              ),
              SizedBox(
                height: useScreenHeight(170),
              ),
              RichText(
                  text: TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(
                          color: Colors.grey.shade700, wordSpacing: 2),
                      children: [
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = widget.onClickRegister,
                        text: " Register!",
                        style: const TextStyle(
                          color: Colors.blue,
                        ))
                  ]))
            ],
          ),
        ),
      ),
    );
  }

  Future login() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      Utils.showSnack(e.message);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
