import 'package:flutter/material.dart';

class SignUpWidget extends StatelessWidget {
   SignUpWidget({Key? key}) : super(key: key);
  final TextEditingController?  tfEmailAddressController = TextEditingController();
  final TextEditingController?  tfPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: Column(children: [
      TextFormField(controller: tfEmailAddressController,),
      TextFormField(controller: tfPasswordController,),


    ])));
  }
}
