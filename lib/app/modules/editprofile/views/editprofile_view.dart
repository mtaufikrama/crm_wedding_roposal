import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/editprofile_controller.dart';

class EditprofileView extends GetView<EditprofileController> {
  const EditprofileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EditprofileView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'EditprofileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
