import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/meal_controller.dart';

class MealView extends GetView<MealController> {
  const MealView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MealView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MealView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
