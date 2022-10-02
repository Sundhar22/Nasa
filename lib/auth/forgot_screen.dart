import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nasa_app/utils/util.dart';

import '../utils/screen_size.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final emailController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: useScreenHeight(15)),
        child: Form(
          child: Column(
            children: [
              SizedBox(height: useScreenHeight(40)),
              SizedBox(
                height: useScreenHeight(250),
                width: useScreenWidth(400),
                child:
                    Image.asset("assets/images/43458538-removebg-preview.png"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Forgot your password?",
                    style: TextStyle(
                        wordSpacing: useScreenWidth(4),
                        color: Colors.black,
                        fontSize: useScreenHeight(18),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(height: useScreenHeight(4)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: useScreenHeight(35)),
                child: Text(
                  'Enter your email address to retrieve your password',
                  style: TextStyle(
                      color: Colors.grey, fontSize: useScreenHeight(15)),
                ),
              ),
              SizedBox(height: useScreenHeight(25)),
              Container(
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
              SizedBox(height: useScreenHeight(40)),
              InkWell(
                onTap: restPassWord,
                child: Container(
                  height: useScreenHeight(60),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(useScreenWidth(13)),
                  ),
                  child: Center(
                      child: Text(
                    "Rest PassWord",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: useScreenHeight(16),
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future restPassWord() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());
      Utils.showSnack("Password rest email sent");
      Navigator.of(context).popUntil((route) => route.isFirst);
     
    } on FirebaseAuthException catch (e) {
      Utils.showSnack(e.message);
      setState(() {
        Navigator.pop(context);
      });
    }
  }
}
