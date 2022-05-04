import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/app_router/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery App',
      initialRoute: '/sign_in',
      getPages: appRoutes(),
    );
  }
}
