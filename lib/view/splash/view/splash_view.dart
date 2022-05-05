import 'package:delivery_app/core/constant.dart';
import 'package:delivery_app/view/onboarding/onboarding_view.dart';
import 'package:delivery_app/view/sign_in/sign_in_view.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashView extends StatefulWidget {
  SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {



  Widget isToken()  {
    Widget validPage;
    if(deviceId.read('deviceId').toString().isNotEmpty){
      validPage = SignInView();
    }else{
      validPage=OnboardingView();
    }
    return validPage;
  }

  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      duration: 3000,
      imageSrc: 'assets/images/splash.png',
      imageSize: 100,
      navigateRoute: OnboardingView(),
    );
  }
}
