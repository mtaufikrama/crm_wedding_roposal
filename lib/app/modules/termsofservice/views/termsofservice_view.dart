import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/termsofservice_controller.dart';

class TermsofserviceView extends GetView<TermsofserviceController> {
  const TermsofserviceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TermsofserviceView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TermsofserviceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
