import 'package:delivery_app/view/home/home_view.dart';
import 'package:delivery_app/view/sign_in/sign_in_view.dart';
import 'package:delivery_app/view/sign_up/sign_up_view.dart';
import 'package:get/get.dart';


appRoutes() => [
  GetPage(
    name: '/home',
    page: () => const HomeView(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/sign_in',
    page: () => const SignInView(),
    middlewares: [MyMiddelware()],
    transition: Transition.rightToLeftWithFade,
    transitionDuration: Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/sign_up',
    page: () => const SignUpView(),
    middlewares: [MyMiddelware()],
    transition: Transition.leftToRightWithFade,
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