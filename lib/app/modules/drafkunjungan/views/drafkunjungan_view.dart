import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/drafkunjungan_controller.dart';

class DrafkunjunganView extends GetView<DrafkunjunganController> {
  const DrafkunjunganView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DrafkunjunganView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DrafkunjunganView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
