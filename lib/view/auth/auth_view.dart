import 'package:delivery_app/controller/auth/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class Authview extends StatelessWidget {
   Authview({Key? key}) : super(key: key);
  final AuthController _authController =
  Get.put(AuthController ());
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: _authController.tabList.length,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: Get.height*0.03),
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
                  color: Colors.white
                ),
                child: Column(children: [
                  Image.asset("assets/images/auth_logo.png",),
                  TabBar(
                    labelColor: Color(0xff000000),
                    unselectedLabelColor: Color(0xff000000),
                    indicatorColor: Color(0xffFA4A0C),
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                    onTap: (_) {
                      _authController.refresh();
                    },
                    controller: _authController.controller,
                    isScrollable: true,
                    tabs: _authController.tabList.map((item) {
                      return Container(
                        alignment: Alignment.bottomCenter,
                        height: Get.height * 0.05,
                        width: Get.width * 0.3,

                        child: item,
                      );
                    }).toList(),
                    //,
                  ),
                ],)


              ),
              Expanded(
                child: GetBuilder<AuthController>(builder: (controller) {
                  return TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: controller.tabViewList.map((item) {
                      return controller.tabViewList[controller.controller.index];
                    }).toList(),
                  );
                }),
              )
            ],
          ),
        )


      ),
    );
  }
}
