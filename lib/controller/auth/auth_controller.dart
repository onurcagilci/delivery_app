import 'package:auto_size_text/auto_size_text.dart';
import 'package:delivery_app/widgets/auth/sign_in_widget.dart';
import 'package:delivery_app/widgets/auth/sign_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController with GetSingleTickerProviderStateMixin{
  final List<Tab> tabList = <Tab>[
    const Tab(
      child: Align(
        alignment: Alignment.center,
        child: AutoSizeText(
          "Sign In",
          maxLines: 2,
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    const Tab(
      child: Align(
        alignment: Alignment.center,
        child: AutoSizeText(

          "Sign Up",
          style: TextStyle(fontSize: 20),
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ),
    ),

  ];
  final List<Widget> tabViewList = [ SignInWidget(), SignUpWidget(),];

  late TabController controller;
  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: tabList.length);
  }
  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }

}