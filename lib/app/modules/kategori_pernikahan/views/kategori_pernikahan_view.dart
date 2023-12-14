import 'dart:ui';

import 'package:crm_wedding/app/modules/home/widgets_home/pencarian.dart';
import 'package:crm_wedding/app/modules/kategori_pernikahan/widgets_kategori_nikahan/listview_pernikahan.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/kategori_pernikahan_controller.dart';

class KategoriPernikahanView extends GetView<KategoriPernikahanController> {
  const KategoriPernikahanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7EBE1),
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        // backgroundColor: Colors.white.withAlpha(200),
        backgroundColor: Color(0xffF7EBE1).withAlpha(200),
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text('Kategori Undangan Pernikahan',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(Icons.search_rounded))
        ],
        flexibleSpace: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [ListViewPernikahan()],
        ),
      ),
    );
  }
}
