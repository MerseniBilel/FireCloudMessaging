import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/green_controller.dart';

class GreenView extends GetView<GreenController> {
  const GreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text(
          controller.name,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
