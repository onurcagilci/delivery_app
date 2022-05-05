import 'dart:io';

import 'package:delivery_app/core/constant.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  Future<String?> _getId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      // import 'dart:io'
      var iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor; // Unique ID on iOS
    } else {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      return androidDeviceInfo.androidId; // Unique ID on Android
    }
  }

  Future initData() async {
    String? device = await _getId();
    deviceId.write("deviceId", device);
  }

  @override
  void initState() {
    initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          decoration: const BoxDecoration(color: Color(0xffFF460A)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: Get.width * 0.1,
                    right: Get.width * 0.1,
                    top: Get.width * 0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: Get.width * 0.2,
                      height: Get.width * 0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          color: Color(0xffffffff)),
                      child: Image.asset("assets/images/onboardinglogo.png"),
                    ),
                    Text(
                      "Food for\nEveryone",
                      style: GoogleFonts.mPlusRounded1c(
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                          color: Color(0xffffffff)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Get.height*0.03),
              SizedBox(
                width: Get.width,
                height: Get.height * 0.5,
                child: Stack(
                  children: [
                    Positioned(
                        top: 0,
                        right: 0,
                        left: 195,
                        bottom: 0,
                        child: Image.asset("assets/images/avatar2.png")),
                    Positioned(
                        top: 0,
                        left: -140,
                        right: 0,
                        bottom: 0,
                        child: Image.asset("assets/images/avatar1.png")),
                    Positioned(
                        top: 300,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: Get.width,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(255, 71, 11, 0.10),
                                  Color.fromRGBO(255, 71, 11, 1),
                                ],
                                begin: FractionalOffset(0.0, 0.0),
                                end: FractionalOffset(1.0, 1.0),
                                stops: [0.0, 1.0],
                                tileMode: TileMode.clamp),
                          ),
                        )),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: Get.width * 0.8,
                  height: Get.height * 0.08,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ))),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(color: Color(0xffFF460A)),
                    ),
                    onPressed: () {
                      Get.toNamed("/sign_in");
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
