import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/favorite2_controller.dart';

class Favorite2View extends GetView<Favorite2Controller> {
  const Favorite2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite2View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Favorite2View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
