import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nasa_app/auth/register_screen.dart';

import '../utils/screen_size.dart';
import '../screens/home/home_screen.dart';
import '../utils/util.dart';
import 'login_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) => isLogin
      ? LoginWidget(
          onClickRegister: toggle,
        )
      : RegisterWidget(onClickRegister: toggle);

  void toggle() => setState(() {
        isLogin = !isLogin;
      });
}
// ************************************

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  bool isVerify = false;
  bool resent = false;

  Timer? timer;
  @override
  void initState() {
    isVerify = FirebaseAuth.instance.currentUser!.emailVerified;
    super.initState();
    if (!isVerify) {
      sendVerification();

      timer = Timer.periodic(const Duration(seconds: 5), (_) => checkVerify());
    }
  }

  @override
  void dispose() {
    timer?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isVerify
        ? const Home()
        : Scaffold(
            body: Center(
              child: SizedBox(
                height: useScreenHeight(150),
                child: Column(
                  children: [
                    const Text(
                      "Verify email .please check your email",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: useScreenHeight(10)),
                    TextButton(
                        onPressed: () => resent ? sendVerification : null,
                        child: const Text(
                          "Resent",
                          style: TextStyle(color: Colors.blue),
                        )),
                    SizedBox(height: useScreenHeight(10)),
                    TextButton(
                        onPressed: () => FirebaseAuth.instance.signOut(),
                        child: const Text(
                          "Cancel",
                          style: TextStyle(color: Colors.blue),
                        )),
                  ],
                ),
              ),
            ),
          );
  }

  Future sendVerification() async {
    try {
      final user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();
      setState(() {
        resent = false;
      });
      await Future.delayed(const Duration(seconds: 8));
      setState(() {
        resent = true;
      });
    } catch (e) {
      Utils.showSnack(e.toString());
    }
  }

  Future checkVerify() async {
    await FirebaseAuth.instance.currentUser!.reload();
    setState(() {
      isVerify = FirebaseAuth.instance.currentUser!.emailVerified;
    });
    if (isVerify) timer!.cancel();
  }
}
