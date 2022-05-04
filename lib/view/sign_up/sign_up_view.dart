import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Center(child: Text("Sign Up View")),
              TextButton(child: Text("SignUp"), onPressed: (){Get.toNamed("/home");},)
            ],
          ),
        ),
      )
    );
  }
}
