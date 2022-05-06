import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignInWidget extends StatelessWidget {
  SignInWidget({Key? key}) : super(key: key);
  final TextEditingController? tfEmailAddressController =
      TextEditingController();
  final TextEditingController? tfPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(
                top: Get.height * 0.015,
                bottom: Get.height * 0.015,
                left: Get.width * 0.08,
                right: Get.width * 0.08),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: tfEmailAddressController,
                    enableSuggestions: false,
                    decoration: InputDecoration(
                        label: Text(
                          "Email Address",
                          style: TextStyle(
                              color: Color.fromRGBO(145, 145, 145, 1)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                        )),
                  ),
                  TextFormField(
                    controller: tfPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        label: Text(
                          "Password",
                          style: TextStyle(
                              color: Color.fromRGBO(145, 145, 145, 1)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                        )),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Color(0xffFA4A0C),
                          fontSize: 16,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: Get.width * 0.8,
                      height: Get.height * 0.06,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xffFA4A0C)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ))),
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Color(0xffffffff)),
                        ),
                        onPressed: () {
                          Get.toNamed("/home");
                        },
                      ),
                    ),
                  )
                ],
              )
            ])));
  }
}
