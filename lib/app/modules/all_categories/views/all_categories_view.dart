import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/all_categories_controller.dart';

class AllCategoriesView extends GetView<AllCategoriesController> {
  const AllCategoriesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AllCategoriesView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AllCategoriesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
