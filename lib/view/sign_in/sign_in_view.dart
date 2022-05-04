import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Center(child: Text("Sign In View")),
              TextButton(child: Text("SignUp"), onPressed: (){Get.toNamed("/sign_up");},)
            ],
          ),
        ),
      )


    );
  }
}
