import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LoginViewView extends GetView {
  const LoginViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginViewView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LoginViewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
