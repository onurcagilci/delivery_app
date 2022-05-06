import 'package:delivery_app/view/home/home_view.dart';
import 'package:delivery_app/view/auth/auth_view.dart';
import 'package:delivery_app/view/sign_up/sign_up_view.dart';
import 'package:delivery_app/view/splash/view/splash_view.dart';
import 'package:get/get.dart';


appRoutes() => [
  GetPage(
    name: '/splash',
    page: () =>  SplashView(),
    transition: Transition.noTransition,
    transitionDuration: Duration(milliseconds: 500),
  ),GetPage(
    name: '/home',
    page: () => const HomeView(),
    transition: Transition.noTransition,
    transitionDuration: Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/auth',
    page: () =>  Authview(),
    middlewares: [MyMiddelware()],
    transition: Transition.noTransition,
    transitionDuration: Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/sign_up',
    page: () => const SignUpView(),
    middlewares: [MyMiddelware()],
    transition: Transition.noTransition,
    transitionDuration: Duration(milliseconds: 500),
  ),
];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}