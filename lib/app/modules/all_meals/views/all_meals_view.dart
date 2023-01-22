import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/all_meals_controller.dart';

class AllMealsView extends GetView<AllMealsController> {
  const AllMealsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AllMealsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AllMealsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
