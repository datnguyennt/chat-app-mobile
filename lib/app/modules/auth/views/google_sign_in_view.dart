import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GoogleSignInView extends GetView {
  const GoogleSignInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GoogleSignInView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'GoogleSignInView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
