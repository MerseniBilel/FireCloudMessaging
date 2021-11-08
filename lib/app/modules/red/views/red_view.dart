import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/red_controller.dart';

class RedView extends GetView<RedController> {
  const RedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          controller.name,
          style: const TextStyle(fontSize: 20, color: Colors.red),
        ),
      ),
    );
  }
}
